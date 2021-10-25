local function init()
  require "telescope".setup {
    defaults = {
      file_ignore_patterns = {
        "node_modules/.*",
        "secret.d/.*",
        "%.pem"
      },
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case"
      },
      file_sorter = require("telescope.sorters").get_fzy_sorter,
      prompt_prefix = " >",
      color_devicons = true
    },
    grep_previewer = require("telescope.previewers").vim_buffer_vimgrep_new
  }

  local map = vim.api.nvim_set_keymap

  local options = {noremap = true}

  -- Builtin
  map(
    "n",
    "<leader>fe",
    '<CMD>lua require("telescope.builtin").file_browser{ cwd = vim.fn.expand("%:p:h") }<CR>',
    options
  )
  map("n", "<leader>fg", '<CMD>lua require("telescope.builtin").git_files{}<CR>', options)
  map("n", "<leader>ff", '<CMD>lua require("telescope.builtin").find_files{ hidden = true }<CR>', options)
  map("n", "<leader>fl", '<CMD>lua require("telescope.builtin").live_grep()<CR>', options)
  map("n", "<leader>fb", '<CMD>lua require("telescope.builtin").buffers()<CR>', options)
  map("n", "<leader>fh", '<CMD>lua require("telescope.builtin").help_tags()<CR>', options)
  map("n", "<leader>fd", '<CMD>lua require("telescope.builtin").lsp_workspace_diagnostics()<CR>', options)
  map("n", "<leader>fr", '<CMD>lua require("telescope.builtin").registers()<CR>', options)

  map(
    "n",
    "<leader>ps",
    '<CMD>lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep For > ")})<CR>',
    options
  )
  map(
    "n",
    "<leader>pw",
    '<CMD>lua require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>")})<CR>',
    options
  )
  -- Extensions
  map("n", "<leader>fs", '<CMD>lua require("telescope").extensions["session-lens"].search_session()<CR>', options)
end

return {
  init = init
}
