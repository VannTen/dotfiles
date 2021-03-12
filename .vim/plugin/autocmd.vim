"Autocmd file for VIM
"


"Vim files autocmd ---------------{{{

augroup VIM-config
	autocmd!
	autocmd BufWritePost *.vim source $MYVIMRC
	autocmd FileType vim setlocal foldmethod=marker
	autocmd Filetype vim setlocal textwidth=0 "Allow longer lines
augroup END
" }}}

" C files -------{{{

augroup C-commands
	autocmd!
	autocmd Filetype c,cpp,make setlocal textwidth=80
	autocmd Filetype c,cpp,make setlocal colorcolumn=+0 " Display column limit
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
augroup END
" }}}

" Comment ----------{{{

augroup Comment-Commands
	autocmd!
	autocmd Filetype c,cpp setlocal comments=sr:/*,mb:**,ex:*/ "Change the comments auto format - for 42 norm
"	autocmd FileType c,cpp autocmd BufWritePre <buffer> %s/^* /** /e " Put comments into correct format
augroup END
" }}}
