require"telescope".setup{}

local map = vim.api.nvim_set_keymap
local options = { noremap = true }

-- Builtin
map('n', '<leader>fe', '<CMD>lua require("telescope.builtin").file_browser{ cwd = vim.fn.expand("%:p:h") }<CR>', options)
map('n', '<leader>fg', '<CMD>lua require("telescope.builtin").git_files{}<CR>', options)
map('n', '<leader>ff', '<CMD>lua require("telescope.builtin").find_files{ hidden = true }<CR>', options)
map('n', '<leader>fl', '<CMD>lua require("telescope.builtin").live_grep()<CR>', options)
map('n', '<leader>fb', '<CMD>lua require("telescope.builtin").buffers()<CR>', options)
map('n', '<leader>fh', '<CMD>lua require("telescope.builtin").help_tags()<CR>', options)
map('n', '<leader>fd', '<CMD>lua require("telescope.builtin").lsp_workspace_diagnostics()<CR>', options)
map('n', '<leader>fr', '<CMD>lua require("telescope.builtin").registers()<CR>', options)

map('n', '<leader>ps', '<CMD>lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ")})<CR>', options)
map('n', '<leader>pw', '<CMD>lua require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>")})<CR>', options)
