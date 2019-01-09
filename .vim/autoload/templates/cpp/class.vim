"Class header template injection ------{{{

function templates#cpp#class#insert()

	let class_name = expand('%:t:r:r')
	let type = expand('%:e')
	let header_guard = toupper(expand('%:t:gs/\./_/'))
	let filename = expand('%:t')
	" Insert templates
	let template = $HOME . "/.vim/templates/cpp/Class." . type
	
	silent exec "read " . template
	"Replaces placeholders
	silent exec '%s/<Class>/\=class_name/gI'
	silent! exec '%s/<FILENAME>/\=header_guard/gI'

endfunction


" }}}
