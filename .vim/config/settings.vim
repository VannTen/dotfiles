"VIM basic settings 
"That file is read by vimrc in the .vim directory


" General settings -------------------{{{

set backspace=indent,eol,start
set autoread " discard extraneous error message when auto changing file mode (+x for scripts)

" }}}

" Indentation settings --------------------------{{{
set tabstop=4       " number of visual spaces per TAB
set shiftwidth=4	" number of spaces per indent
set softtabstop=4   " number of spaces in TAB when editing
set noexpandtab
set autoindent
" }}}

"UI settings -------------------------------{{{

set showcmd
set cursorline
set mouse=a
set wildmenu 	" visual autocomplete for command menu
set showmatch	" higlhlight matching () and the like
if v:version >= 704
	set number		" The two number allow hybrid mode on version 7.4 and more. Otherwise, just relative number
endif
set relativenumber      " Put lines numbers on
set background=dark "Colors config
colorscheme elflord
syntax on       " Enables syntax coloring
set title       " Window title = file name

" Statusline with column number
set statusline=[%{winnr()}]  " Split number for swapping around
set statusline+=%f  " File Name
set statusline+=\  " Separator
set statusline+=%y " Filetype
set statusline+=%m " If file is modified since last write
set statusline+=%r " Read-only flag.
set statusline+=%< " Where to strip the status line
set statusline+=\ %{strftime('%c')}\  " Displays date and time
set statusline+=%= " Right side
set statusline+=Line\ 
set statusline+=%l/%L "Line number/Number of lines in file
set statusline+=\ \|\  " Separator
set statusline+=Col\ 
set statusline+=%c
hi StatusLine ctermbg=red ctermfg=black

set laststatus=2 " Always show status line

"Indicate active split with status line
augroup activeSplitStatusLine
	autocmd WinEnter * hi StatusLine ctermbg=red ctermfg=black
	autocmd WinLeave * hi StatusLine ctermbg=none ctermfg=white
augroup END

set scrolloff=100 " Keep the cursor in the middle

" }}}

"Search ---------------------------{{{

set incsearch   " search while characters are entered
set hlsearch    " higlight match
" }}}

"Folding ---------------------{{{

set foldenable
set foldlevelstart=10   " control fold level
set foldmethod=syntax
" }}}

" Splits -----------{{{

set splitbelow
set splitright
" }}}

"Backups and undos ----------------{{{

set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
" }}}
