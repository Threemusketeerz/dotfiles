set nocompatible		" be iMproved, required
filetype off 			" require

" set the runtime path to include vundle and initialize
set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Alternatively, pass a path where vundle should install plugins

    " let Vundle manage Vundle, required*
    Plugin 'VundleVim/Vundle.vim'

    " OPTIONAL PLUGINS
    Plugin 'easymotion/vim-easymotion'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'scrooloose/nerdtree' 
    Plugin 'kien/ctrlp.vim'
    "Plugin 'python-mode/python-mode'
    Plugin 'myusuf3/numbers.vim'
    "Plugin 'Yggdroot/indentLine'
    Plugin 'townk/vim-autoclose'
    Plugin 'majutsushi/tagbar'
    Plugin 'Shougo/unite.vim'
    Plugin 'Shougo/vimfiler.vim'
    Plugin 'altercation/vim-colors-solarized'

    Plugin 'hsitz/VimOrganizer'

    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
    Plugin 'davidhalter/jedi-vim'

"    Plugin 'Valloric/YouCompleteMe'
    
call vundle#end()		" required
filetype plugin indent on	" required

