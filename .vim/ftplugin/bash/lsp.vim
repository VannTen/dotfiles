if exists('s:loaded')
	finish
endif
let s:loaded = 1

if executable('bash-language-server')
	call lsp#register_server({
        \ 'name': 'bash-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        \ 'allowlist': ['sh'],
        \ })
endif
