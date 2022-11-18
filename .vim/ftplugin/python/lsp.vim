if exists('s:loaded')
	finish
endif
let s:loaded = 1

if executable('pylsp')
	call lsp#register_server({
				\ 'name': 'pylsp',
				\ 'cmd': {server_info->['pylsp']},
				\ 'allowlist': ['python'],
                \ 'workspace_config': {'pylsp': {
                    \ 'plugins': {
                        \ 'flake8' : {'enabled': v:true},
                        \ 'pylint' : {'enabled': v:false},
                        \ 'rope_completion' : {'enabled': v:true},
                        \ 'pydocstyle' : {'enabled': v:true},
                        \ 'autopep8' : {'enabled': v:false},
                        \ 'pyflakes' : {'enabled': v:false},
                        \ 'pycodestyle' : {'enabled': v:false}
                        \ },
                    \ 'configurationSources': ['flake8', 'pydocstyle']
                    \ }
                \ }
				\ })
endif
