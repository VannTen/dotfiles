if exists('s:loaded')
	finish
endif
let s:loaded = 1

if executable('pylsp')
	call lsp#register_server({
				\ 'name': 'pylsp',
				\ 'cmd': {server_info->['pylsp']},
				\ 'allowlist': ['python']
				\ })
endif
