lua << EOF
vim.opt.list = true
vim.opt.listchars = {
    space = "⋅",
    eol = "↴",
}
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_end_of_line = true,
    buftype_exclude = {"terminal"}
}
EOF
