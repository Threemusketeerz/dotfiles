filetype plugin indent on

" Solarized theme
syntax enable
set background=dark
colorscheme dracula

" GUI settings
if has("gui_running")
    " Simplify the ui
    set guioptions-=m
    set guioptions-=T
    " Set a prettier font.
    set guifont=SOURCE\ CODE\ PRO\ FOR\ POWERLINE
endif


"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_include_dirs = ['/usr/lib/avr/include/', '/usr/share/arduino/hardware/arduino/cores/arduino/']

set list
set relativenumber
set smarttab

autocmd FileType make set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab

" autocmd BufWinEnter,BufRead *.cpp,*.h,*.cpp set foldmethod=syntax

" Make view of folds on close
" autocmd BufWinLeave * mkview
" If fold are created, load in those fold. 
" autocmd BufWinEnter * :silent loadview
