if exists('s:loaded')
	finish
endif
let s:loaded = 1

if (executable('rls'))
  call lsp#register_server({
      \ 'name': 'rls',
      \ 'cmd': {server_info->['rls']},
      \ 'whitelist': ['rust'],
      \ })
endif
