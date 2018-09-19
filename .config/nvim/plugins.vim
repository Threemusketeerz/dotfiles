set nocompatible		" be iMproved, required
filetype off 			" require

" set the runtime path to include vundle and initialize
set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Alternatively, pass a path where vundle should install plugins

    " let Vundle manage Vundle, required*
    Plugin 'VundleVim/Vundle.vim'

    " OPTIONAL PLUGINS
    " Motion plugins
    Plugin 'easymotion/vim-easymotion'

    " Theme plugins
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    " Utility
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'hsitz/VimOrganizer'
    Plugin 'honza/vim-snippets'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'raimondi/delimitmate'

    " Navigation
    Plugin 'kien/ctrlp.vim'
    Plugin 'scrooloose/nerdtree' 
    Plugin 'myusuf3/numbers.vim'
    Plugin 'townk/vim-autoclose'
    Plugin 'altercation/vim-colors-solarized'

    " Note taking
    Plugin 'xolox/vim-notes'
    Plugin 'xolox/vim-misc'

    " Latex 
    Plugin 'vim-latex/vim-latex'

    " Python
    Plugin 'davidhalter/jedi-vim'

    " C/C++
    Plugin 'WolfgangMehner/c-support'
    
call vundle#end()		" required
filetype plugin indent on	" required

