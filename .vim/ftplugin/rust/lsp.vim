if exists('s:loaded')
	finish
endif
let s:loaded = 1

if (executable('rust-analyzer'))
  call lsp#register_server({
      \ 'name': 'Rust Language Server',
      \ 'cmd': {server_info->['rust-analyzer']},
      \ 'whitelist': ['rust'],
      \ })
endif
