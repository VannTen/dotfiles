if exists('s:loaded')
	finish
endif
let s:loaded = 1

if executable('yaml-language-server')
	call lsp#register_server({
				\ 'name': 'yaml-language-server',
				\ 'cmd': {server_info->['yaml-language-server', '--stdio']},
				\ 'whitelist': ['yaml', 'yaml.ansible'],
				\ 'workspace_config': {
				\   'yaml': {
				\     'validate': v:true,
				\     'hover': v:true,
				\     'completion': v:true,
				\     'customTags': [],
				\     'schemas': {},
				\     'schemaStore': { 'enable': v:true },
				\   }
				\ }
				\})
endif
