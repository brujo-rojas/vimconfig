au FileType javascript,css nnoremap <silent> <leader>yc :call YUICompressor()<cr>
if !exists("yuicompressor_command")
  let yuicompressor_command = 'java -jar /bin/yui.jar'
endif

if !exists("yuicompressor_charset")
  let yuicompressor_charset = 'UTF-8'
endif

if !exists("yuicompressor_command_options")
  let yuicompressor_command_options = '--charset ' . g:yuicompressor_charset
endif

command! -nargs=* YUICOMPRESSOR call YUICompressor(<f-args>)

function! YUICompressor()
	
	let current_file = shellescape(expand('%:p'))
    let cwd = expand('%:p:h')
    let nam = expand('%:t:r')
    let ext = expand('%:e')
    let minfname = nam.".min.".ext

	if ext == 'js'
		cal system(g:yuicompressor_command.' --charset UTF-8 --type js -v '.current_file.' > ./'.shellescape(minfname))
	elseif ext == 'css'
		cal system(g:yuicompressor_command.' --charset UTP-8 --type css -v '.current_file.' > ./'.shellescape(minfname))
	endif

	exe 'vsplit '.'./'.minfname
	exe "set wrap"
endfunction

