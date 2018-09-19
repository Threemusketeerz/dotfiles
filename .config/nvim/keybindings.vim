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

nnoremap <leader>sv :source ~/dotfiles/.config/nvim/init.vim <CR>
nnoremap <leader>ve :e ~/dotfiles/.config/nvim/init.vim <CR>
nnoremap <leader>ke :e ~/dotfiles/.config/nvim/keybindings.vim <CR>
nnoremap <leader>ge :e ~/dotfiles/.config/nvim/general.vim <CR>
nnoremap <leader>pe :e ~/dotfiles/.config/nvim/plugins.vim <CR>
