lua << EOF
-- In order for bellow plugins to work you need to install Tressitter language parsers:
-- eg: TSInstall php
require("nvim-gps").setup()
require('nvim_context_vt').setup()

EOF
