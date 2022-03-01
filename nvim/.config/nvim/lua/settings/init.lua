local set = vim.opt

set.expandtab = true
set.smarttab = true
set.shiftwidth = 2
set.tabstop = 2
set.softtabstop = 2
set.smartindent = true

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.splitbelow = true
set.splitright = true
set.wrap = false
set.scrolloff = 8
set.fileencoding = "utf-8"
set.termguicolors = true

set.relativenumber = true
set.cursorline = true

set.hidden = true

set.backup = false

set.colorcolumn = "80"
set.swapfile = false

print(vim.bo.filetype)
local filetype = vim.bo.filetype

