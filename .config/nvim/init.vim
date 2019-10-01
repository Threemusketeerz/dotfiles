call plug#begin('~/.vim/plugged')

Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

" Nice gui stuff, yum yum
"Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" C++
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --rust-completer' }
" Autocompletion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
set signcolumn=yes

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ 'cpp': ['clangd'],
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ }
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Linting
Plug 'vim-syntastic/syntastic'

call plug#end()

filetype plugin indent on

" Include custom files
source $HOME/.config/nvim/abbr.vim
source $HOME/.config/nvim/keybindings.vim
source $HOME/.config/nvim/general.vim

let g:indentLine_char = '.'

"" For indentation levels 4 and soft tabs.
set encoding=utf-8
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set wrap


au BufEnter *.html set syntax=html
au BufEnter *.vim set ft=vim
au BufEnter *.yml setlocal shiftwidth=2 tabstop=2
au FilterWritePre * if &diff | setlocal wrap< | endif

" Annoyances
command! W w
command! Q q

command! Bs buffers

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
let g:airline#extensions#ycm#enabled = 1

" Delimit mate
let g:delimitMate_expand_cr = 2

" C++ highligh
let g:cpp_class_decl_highlight = 1

if exists("+autochdir")
    set autochdir
endif
