set packpath^=~/.vim

packadd minpac

call minpac#init()

call minpac#add('easymotion/vim-easymotion')

call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-surround')
call minpac#add('scrooloose/nerdcommenter')
""call minpac#add('raimondi/delimitmate')
call minpac#add('kien/ctrlp.vim')

call minpac#add('vim-latex/vim-latex')
call minpac#add('scrooloose/vim-slumlord')
call minpac#add('aklt/plantuml-syntax')

" call minpac#add('davidhalter/jedi-vim')

call minpac#add('altercation/vim-colors-solarized')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')

call minpac#add('vim-syntastic/syntastic')

call minpac#add('k-takata/minpac')

command! PluginUpdate call minpac#update()
command! PluginClean call minpac#clean() 
