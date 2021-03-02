" Indentation settings 
set autoindent

"UI settings -------------------------------{{{

set showcmd
set mouse=a
set wildmenu 	" visual autocomplete for command menu
set showmatch	" higlhlight matching () and the like

set number		" The two number allow hybrid mode on version 7.4 and more. Otherwise, just relative number
set relativenumber      " Put lines numbers on
syntax on       " Enables syntax coloring
set title       " Window title = file name

" Statusline with column number
set statusline=[%{winnr()}]  " Split number for swapping around
set statusline+=%< " Where to strip the status line
set statusline+=%f  " File Name
set statusline+=\  " Separator
set statusline+=%y " Filetype
set statusline+=%m " If file is modified since last write
set statusline+=%r " Read-only flag.
set statusline+=%= " Right side
set statusline+=Column\ 
set statusline+=%c 

"Indicate active split with status line
augroup activeSplitStatusLine
	autocmd WinEnter * hi StatusLine ctermbg=red ctermfg=black
	autocmd WinLeave * hi StatusLine ctermbg=none ctermfg=white
augroup END

set scrolloff=100 " Keep the cursor in the middle

" }}}

set incsearch   " search while characters are entered
set hlsearch    " higlight match

set foldenable
set foldlevelstart=10   " control fold level
set foldmethod=syntax

set splitbelow
set splitright

set backup

set updatetime=2000
