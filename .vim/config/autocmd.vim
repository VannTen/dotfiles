"Autocmd file for VIM
"


"Vim files autocmd ---------------{{{

augroup VIM-config
	autocmd!
	autocmd BufWritePost *.vim source $MYVIMRC
	autocmd FileType vim setlocal foldmethod=marker
	autocmd Filetype vim setlocal foldlevel=0
	autocmd Filetype vim setlocal textwidth=0 "Allow longer lines
augroup END
" }}}

" Git commit --------{{{

augroup Git
	autocmd!
	autocmd Filetype gitcommit setlocal textwidth=72  " Format the git commits nicely
augroup END

" }}}

" Handling whitespaces and tabs--------{{{

augroup Spaces-commands
	autocmd!
	"autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e " Suppress whitespaces at end of line
	"autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/^ \+//e " Suppress whitespaces at beginning of line
	"autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/^\s\+$//e " Suppress whitespaces on empty lines
	"autocmd FileType c,cpp autocmd BufWritePre <buffer> 12,$s/\([^#]\) \+/\1 /e " Suppress double whitespaces, but not after # (define indentation)
augroup END
" }}}

" C files -------{{{
augroup C-commands
	autocmd!
	autocmd Filetype c,cpp,make setlocal textwidth=80
	autocmd Filetype c,cpp,make setlocal colorcolumn=+0 " Display column limit
	autocmd Filetype c setlocal foldlevel=0
augroup END
" }}}

" Markdown files -------{{{
augroup markdown-commands
	autocmd!
	autocmd Filetype markdown setlocal textwidth=80
	autocmd Filetype markdown setlocal colorcolumn=+0 " Display column limit
	autocmd Filetype markdown setlocal foldlevel=0
augroup END
" }}}

" Indenting ---------{{{

augroup Indent-Commands
	autocmd!
	"autocmd FileType c autocmd BufWritePre <buffer> normal! m`gg=G`` " indent all lines and go back to cursor postion
augroup END
" }}}

" Folding file specific --------{{{

augroup Folding
	autocmd!
	autocmd BufReadPre *Srcs.mk setlocal foldmethod=indent
	autocmd BufReadPre *Srcs.mk setlocal foldlevel=0
augroup END
" }}}

" Comment ----------{{{

augroup Comment-Commands
	autocmd!
	autocmd Filetype c,cpp setlocal comments=sr:/*,mb:**,ex:*/ "Change the comments auto format - for 42 norm
	autocmd Filetype c,cpp,make setlocal formatoptions=croql "Set autowrapping in comments but not elsewhere
"	autocmd FileType c,cpp autocmd BufWritePre <buffer> %s/^* /** /e " Put comments into correct format
augroup END
" }}}


" Templates insertion -----{{{

augroup Templates
	autocmd!
	autocmd BufNewFile *.{hpp,cpp} call templates#cpp#class#insert()
augroup END


" }}}

" Change write mod ------{{{

augroup Mode
	autocmd!
"	autocmd BufWritePost *.php silent !chmod u+x <afile>
augroup END

function! s:on_lsp_buffer_enabled() abort
	setlocal omnifunc=lsp#complete
	setlocal signcolumn=yes
	nmap <buffer> gd <plug>(lsp-definition)
	nmap <buffer> <f2> <plug>(lsp-rename)
endfunction

augroup lsp_install
	au!
	autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
