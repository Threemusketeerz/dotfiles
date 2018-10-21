" Include custom files
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/keybindings.vim

" Bindings
" nnoremap <leader>gt :YcmCompleter GoTo<CR>
set hlsearch

let g:indentLine_char = '.'
" colorscheme badwolf

" For indentation levels 4 and soft tabs.
set encoding=utf-8
set expandtab
set shiftwidth=4
set softtabstop=4

:au BufNewFile,BufRead *.html set syntax=html

" Annoyances
command! T NERDTree
command! Tt NERDTreeToggle

command! W w
command! Q q

" Python files setup
":au BufNewFile,BufRead *.py,*.js set tabstop=4
    "\ softtabstop=4
    "\ shiftwidth=4
    "\ textwidth=79
    "\ expandtab
    "\ autoindent
    "\ fileformat=unix


" Airline powerline fonts
let g:airline_powerline_fonts = 1

" Delimit mate
let g:delimitMate_expand_cr = 2
