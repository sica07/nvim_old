augroup PhpactorMappings
    au!
    au FileType php nmap <buffer> <Leader>.eu :PhpactorImportClass<CR>
    au FileType php nmap <buffer> <Leader>e :PhpactorClassExpand<CR>
    au FileType php vnoremap <buffer> <Leader>.em :PhpactorExtractMethod<CR>
    au FileType php nnoremap <buffer> <Leader>.ec :PhpactorExtractConstant<CR>
    au FileType php nmap <buffer> <Leader>.ic :PhpactorImportMissingClasses<CR>
    au FileType php nmap <buffer> <Leader>. :PhpactorContextMenu<CR>
    au FileType php nmap <buffer> <Leader>.nn :PhpactorNavigate<CR>
    au FileType php,cucumber nmap <buffer> <Leader>.gd
        \ :PhpactorGotoDefinition edit<CR>
    au FileType php nmap <buffer> <Leader>.k :PhpactorHover<CR>
    au FileType php nmap <buffer> <Leader>.cc :PhpactorClassNew<CR>
    au FileType php nmap <buffer> <Leader>.ci :PhpactorClassInflect<CR>
    au FileType php nmap <buffer> <Leader>.fr :PhpactorFindReferences<CR>
    au FileType php nmap <buffer> <Leader>.ep :PhpactorTransform<CR>
    au FileType php nmap <buffer> <Leader>.mf :PhpactorMoveFile<CR>
    au FileType php nmap <buffer> <Leader>.cf :PhpactorCopyFile<CR>
    au FileType php nmap <buffer> <silent> <Leader>.ee
        \ :PhpactorExtractExpression<CR>
    au FileType php vmap <buffer> <silent> <Leader>.ee
        \ :<C-u>PhpactorExtractExpression<CR>
    "au FileType php vmap <buffer> <silent> <Leader>em
        "\ :<C-u>PhpactorExtractMethod<CR>
  augroup END

lua <<EOF
local Float = require "plenary.window.float"

vim.cmd([[
:command! -nargs=0 LspPhpactorReindex lua vim.lsp.buf_notify(0, "phpactor/indexer/reindex",{})
:command! -nargs=0 LspPhpactorConfig lua LspPhpactorDumpConfig()
:command! -nargs=0 LspPhpactorStatus lua LspPhpactorStatus()
]])

local function showWindow(title, syntax, contents)
    local out = {};
    for match in string.gmatch(contents, "[^\n]+") do
        table.insert(out, match);
    end

    local float = Float.percentage_range_window(0.6, 0.4, { winblend = 0 }, {
        title = title,
        topleft = "┌",
        topright = "┐",
        top = "─",
        left = "│",
        right = "│",
        botleft = "└",
        botright = "┘",
        bot = "─",
    })

    vim.api.nvim_buf_set_option(float.bufnr, "filetype", syntax)
    vim.api.nvim_buf_set_lines(float.bufnr, 0, -1, false, out)
end

function LspPhpactorDumpConfig()
    local results, _ = vim.lsp.buf_request_sync(0, "phpactor/debug/config", {["return"]=true})
    for _, res in pairs(results or {}) do
        showWindow("Phpactor LSP Configuration", "json", res["result"])
    end
end
function LspPhpactorStatus()
    local results, _ = vim.lsp.buf_request_sync(0, "phpactor/status", {["return"]=true})
    for _, res in pairs(results or {}) do
        showWindow("Phpactor Status", "markdown", res["result"])
    end
end
EOF
