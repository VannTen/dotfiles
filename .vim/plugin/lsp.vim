function! s:on_lsp_buffer_enabled() abort
	setlocal signcolumn=auto
	setlocal tagfunc=lsp#tagfunc
	setlocal keywordprg=:LspHover
"    setlocal foldmethod=expr
"                \ foldexpr=lsp#ui#vim#folding#foldexpr()
"                \ foldtext=lsp#ui#vim#folding#foldtext()
	nmap <buffer> <C-]> <plug>(lsp-definition)
	nmap <buffer> <f2> <plug>(lsp-rename)
    nmap <buffer> * <plug>(lsp-next-reference)
    nmap <buffer> <A-a> <plug>(lsp-code-action-float)
    nmap <buffer> <A-l> <plug>(lsp-code-lens)
    nmap <buffer> <A-e> <plug>(lsp-next-error)
    nmap <buffer> <A-w> <plug>(lsp-previous-error)
    nmap <buffer> <A-z> <plug>(lsp-next-warning)
    nmap <buffer> <A-x> <plug>(lsp-previous-warning)
    nmap <buffer> <A-d> <plug>(lsp-next-diagnostic)
    nmap <buffer> <A-s> <plug>(lsp-previous-diagnostic)


endfunction

augroup lsp_install
	au!
	autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

augroup lsp_auto
    au!
    autocmd BufWritePre <buffer> LspDocumentFormatSync
augroup END

let g:lsp_diagnostics_float_cursor = 1
"let g:lsp_use_native_client = 1
let g:lsp_preview_keep_focus = 0
