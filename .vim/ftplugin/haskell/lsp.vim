if exists('s:loaded')
	finish
endif
let s:loaded = 1

if (executable('haskell-language-server-wrapper'))
  call lsp#register_server({
      \ 'name': 'haskell-language-server-wrapper',
      \ 'cmd': {server_info->['haskell-language-server-wrapper', '--lsp']},
      \ 'whitelist': ['haskell'],
      \ })
endif
