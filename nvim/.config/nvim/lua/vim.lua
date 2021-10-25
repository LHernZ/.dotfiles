local function set_vim_g()
  vim.g.mapleader = " "
end

local function set_vim_o()
  local settings = {
    backup = false,
    errorbells = false,
    expandtab = true,
    hidden = true,
    scrolloff = 8,
    softtabstop = 2,
    showmode = false,
    termguicolors = true
  }

  for k, v in pairs(settings) do
    vim.o[k] = v
  end

  vim.o.shortmess = vim.o.shortmess .. "c"

  vim.cmd("set encoding=utf8")
  vim.cmd("set nowritebackup")
  vim.cmd("set shiftwidth=2")
  vim.cmd("set secure")
  vim.cmd("set splitright")
  vim.cmd("set tabstop=2")
  vim.cmd("set noswapfile")
end

local function set_vim_wo()
  vim.wo.number = true
  vim.wo.relativenumber = true
  vim.wo.wrap = false
end

local function set_keymaps()
  local map = vim.api.nvim_set_keymap

  local options = {noremap = false}
  map("n", "<leader>,", ":Format<cr>", options)
end

local function init()
  set_vim_g()
  set_vim_o()
  set_vim_wo()
  set_keymaps()
end

return {
  init = init
}
