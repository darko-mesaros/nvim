" i hate the escape key
inoremap jj <Esc>
inoremap kk <Esc>
" use control-c instead of escape too
inoremap <C-c> <Esc>
" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>
" show/hide line numbers
nnoremap <C-N><C-N> :set invnumber<CR>
" show/hide blank characters
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>
" toggle no-paste
nnoremap <F6> :set invpaste paste?<CR>
