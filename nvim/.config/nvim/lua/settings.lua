local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

g.mapleader = ' '
opt.swapfile = false

opt.number = true
opt.showmatch = true
opt.foldmethod = 'marker'
opt.colorcolumn = '80'
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.linebreak = true

cmd [[au BufWritePre * :%s/\s\+$//e]]

opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240
opt.scrolloff = 8

opt.termguicolors = true
g.tokyonight_style = 'night'
g.tokyonight_transparent = true
cmd [[colorscheme tokyonight]]

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]
cmd [[au BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)]]

cmd [[
  autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml setlocal shiftwidth=2 tabstop=2
]]

g.indentLine_char = '|'

cmd [[autocmd FileType markdown let g:indentLine_enabled=0]]
