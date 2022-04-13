lua << EOF
local present, gitsigns = pcall(require, "gitsigns")
if not present then
   return
end

gitsigns.setup {
   keymaps = {
      -- Default keymap options
      buffer = true,
      noremap = true,
      ["n ]g"] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'" },
      ["n [g"] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'" },
      ["n ]og"] = '<cmd>lua require"gitsigns".toggle_signs()<CR>',
      ["n <leader>hs"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
      ["n <leader>hu"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
      ["n <leader>hr"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
      ["n <leader>go"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
      ["n <leader>ho"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
      ["n <leader>hq"] = '<cmd>lua require"gitsigns".setqflist()<CR>',
      ["n <leader>gq"] = '<cmd>lua require"gitsigns".setqflist()<CR>',
      ["n <leader>hb"] = '<cmd>lua require"gitsigns".blame_line()<CR>',
   },
   numhl = true,
   current_line_blame = true,
   signcolumn = true,
   word_diff = true,

   sign_priority = 5,
   signs = {
      add = { hl = "DiffAdd", text = "+", numhl = "GitSignsAddNr" },
      change = { hl = "DiffChange", text = "~", numhl = "GitSignsChangeNr" },
      changedelete = { hl = "DiffChange", text = "~", numhl = "GitSignsChangeNr" },
      delete = { hl = "DiffDelete", text = "-", numhl = "GitSignsDeleteNr" },
      topdelete = { hl = "DiffDelete", text = "-", numhl = "GitSignsDeleteNr" },
   },

   status_formatter = nil, -- Use default
   watch_gitdir = {
      interval = 100,
   },
}
EOF
