if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set background=dark
let ayucolor="dark"
colorscheme ayu

hi ColorColumn ctermbg=0 guibg=grey
hi SignColumn guibg=none
hi CursorLineeNR guibg=none
hi Normal guibg=none
hi LineNr guifg=#5eacd3
hi netrwDir guifg=#5eacd3
hi qfFileName guifg=#aed75f
hi TelescopeBorder guifg=#5eacd3
