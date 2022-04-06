lua << EOF
local basic_setup = {
  on_attach = function(client, bufnr)
    require "lsp_signature".on_attach()
    --require'completion'.on_attach()
  end,
}
local psalm_setup = {
  on_attach = function(client, bufnr)
    require "lsp_signature".on_attach()
    --require'completion'.on_attach()
  end,
  cmd = {"psalm", "--language-server"}
}
--require'lspconfig'.psalm.setup(psalm_setup)

--require'lspconfig'.intelephense.setup(basic_setup)
local phpactor_setup = {
  on_attach = function(client, bufnr)
    require "lsp_signature".on_attach()
    --require 'completion'.on_attach()
  end,
  init_options = {
    --["language_server_psalm.enabled"] = false,
    ["completion_worse.disabled_completors"] = {},
  }

}

require'lspconfig'.phpactor.setup(phpactor_setup)
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
