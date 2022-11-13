" plugins
call plug#begin()
" Make C# usable
Plug 'OmniSharp/omnisharp-vim'

" TidalCycles livecoding language
" https://tidalcycles.org/
Plug 'tidalcycles/vim-tidal'
call plug#end()

" use neovim's own terminal instead of tmux (needed for TidalCycles)
let g:tidal_target = "terminal"

" some nice defaults
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

" copy to system clipboard
function! ClipboardYank()
  call system('xclip -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
  let @@ = system('xclip -o -selection clipboard')
endfunction
vnoremap <silent> <C-c> y:call ClipboardYank()<cr>
vnoremap <silent> <C-x> d:call ClipboardYank()<cr>
