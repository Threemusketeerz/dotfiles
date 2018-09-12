" for moving lines.
no <down> ddp
no <up> ddkP

" Auto expand
inoremap { {<CR>}<ESC>ko
inoremap [<CR> [<CR><BS>]<ESC>ko
inoremap (<CR> (<CR><BS>)<ESC>ko

map <F2> :w !diff % - <enter>
" Auto-center on motion up and down
nmap j jzz
nmap k kzz

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
