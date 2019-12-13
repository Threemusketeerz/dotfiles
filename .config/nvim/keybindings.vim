" for moving lines.
no <down> ddp
no <up> ddkP

" Auto expand
"inoremap {<CR> {<CR>}<ESC>ko
"inoremap [<CR> [<CR><BS>]<ESC>ko
"inoremap (<CR> (<CR><BS>)<ESC>ko

noremap <F2> :w !diff % - <enter>
" Auto-center on motion up and down
nnoremap j jzz
nnoremap k kzz

" Exit insert
inoremap jk <ESC>

" Remap for Ctrl-w j to Ctrl-j/k to ease split view navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" numbers.vim command map
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" Edit config files
nnoremap <leader>sv :source ~/dotfiles/.config/nvim/init.vim <CR>
nnoremap <leader>ev :e ~/dotfiles/.config/nvim/init.vim <CR>
nnoremap <leader>ek :e ~/dotfiles/.config/nvim/keybindings.vim <CR>
nnoremap <leader>eg :e ~/dotfiles/.config/nvim/general.vim <CR>
nnoremap <leader>ep :e ~/dotfiles/.config/nvim/plugins.vim <CR>
nnoremap <leader>ea :e ~/dotfiles/.config/nvim/abbr.vim <CR>

" Window management
nnoremap <leader>bn :bn <CR>
nnoremap <leader>bp :bp <CR>
nnoremap <leader>tn :tabnext <CR>
nnoremap <leader>tp :tabp <CR>

" C++ Open header or source file
nnoremap <leader>oh :e %<.hpp<CR>
nnoremap <leader>os :e %<.cpp<CR>

nnoremap <leader>vsh :vs %<.hpp<CR>
nnoremap <leader>vss :vs %<.spp<CR>

nnoremap <leader>sph :sp %<.hpp<CR>
nnoremap <leader>sps :sp %<.cpp<CR>

" YCM
nnoremap <F9> :YcmCompleter FixIt<CR>
nnoremap <F8> :YcmDiag<CR>
nnoremap <leader>gtd :YcmComplete GoTo<CR>

" NerdTree
nnoremap <F1> :NERDTree<CR>
nnoremap <F2> :NERDTreeVCS<CR>

nnoremap <C-p> :FZF<CR>

" Specific Json formatting
com! FormatJson %!python -m json.tool

inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
