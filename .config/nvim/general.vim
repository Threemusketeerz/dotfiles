" Solarized theme
syntax enable
set background=dark
colorscheme solarized

" GUI settings
if has("gui_running")
    " Simplify the ui
    set guioptions-=m
    set guioptions-=T
    " Set a prettier font.
    set guifont=SOURCE\ CODE\ PRO\ FOR\ POWERLINE
endif


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set list

" Sets our cursor
" set guicursor=n-v-c-sm:block,i-ci-ve:ver30-iCursor-blinkwait30-blinkon200-blinkoff150

"hi CursorIM ctermfg=White ctermbg=White guifg=White guibg=White
