set number
set relativenumber

set expandtab
set nowrap

set tabstop=4
set shiftwidth=4
set softtabstop=4

" Scroll without moving cursor
noremap <expr> <A-j> "\<C-e>"
noremap <expr> <A-k> "\<C-y>"

noremap J 10j
noremap K 10k

" copy to system clipboard
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction
vnoremap <silent> <C-c> y:call ClipboardYank()<cr>
vnoremap <silent> <C-x> d:call ClipboardYank()<cr>

" parentheses handling
" inoremap { {}<Esc>i<CR><Esc>O<Tab>
" inoremap [ []<Esc>i
" inoremap ( ()<Esc>i

colo desert
