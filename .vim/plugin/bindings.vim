let mapleader = ","
let maplocalleader = "\\"

inoremap ii <esc>
vnoremap ii <esc>
inoremap <esc> <nop>

nnoremap <leader>sv :source $MYVIMRC<cr>:nohlsearch<cr>

noremap <Up> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
noremap <Left> <nop>
nnoremap <leader>hl :nohlsearch<CR>

nnoremap - ddp
nnoremap _ ddkkp


nnoremap <leader>' viw<esc>bi'<esc>ea'<esc>
nnoremap <leader>" viw<esc>bi"<esc>ea"<esc>
nnoremap <leader>[ viw<esc>bi[<esc>ea]<esc>
nnoremap <leader>( viw<esc>bi(<esc>ea)<esc>
vnoremap <leader>' c''<esc>P
vnoremap <leader>" c""<esc>P
vnoremap <leader>( c()<esc>P
vnoremap <leader>[ c[]<esc>P

"Movement ----------------{{{

nnoremap j gj
nnoremap k gk
inoremap <leader>o <esc>jA
nnoremap L $
nnoremap H ^

nnoremap GG gg=G``

"Operators

onoremap in) :execute "normal! ?)\r:nohlsearch\r"<CR><Left>vi(
onoremap in( :execute "normal! /(\r"<Left>vi(<cr><esc>:nohlsearch<cr>i<Right>
onoremap in} :execute "normal! ?}\r"<Left>vi{<cr><esc>:nohlsearch<cr>i<Right>
onoremap in{ :execute "normal! /{\r"<Left>vi{<cr><esc>:nohlsearch<cr>i<Right>

" Split manipulation

nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap ˚ <C-W>+
nnoremap ∆ <C-W>-
nnoremap ˙ <C-W>>
nnoremap ¬ <C-W><

"}}}

nnoremap <leader>mk :make<CR>


"Debug (Highlight groups

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
