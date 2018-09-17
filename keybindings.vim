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

" Remap fd to <ESC>
inoremap fd <ESC>

" Remap for Ctrl-w j to Ctrl-j/k to ease split view navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" numbers.vim command map
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

nnoremap <leader>sv :source $MYVIMRC <CR>
nnoremap <leader>ve :e ~/dotfiles/.vimrc <CR>
nnoremap <leader>ke :e ~/dotfiles/keybindings.vimrc <CR>
nnoremap <leader>ge :e ~/dotfiles/general.vimrc <CR>
nnoremap <leader>pe :e ~/dotfiles/plugins.vimrc <CR>
