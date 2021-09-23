lua << EOF
local basic_setup = {
  on_attach = function(client, bufnr)
    require "lsp_signature".on_attach()
    --require'completion'.on_attach()
  end,
}
require'lspconfig'.intelephense.setup(basic_setup)
require'lspconfig'.tsserver.setup(basic_setup)

require'colorizer'.setup()
require('neoscroll').setup()
EOF

nnoremap <silent> gt <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gd <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gr <Cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> K <Cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
