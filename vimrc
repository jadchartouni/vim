syntax enable

set backspace=indent,eol,start						"Make backspace behave like every other editor.
let mapleader = ','							"The default leader is \, but a comma is much better.
set number								"Activate line numbers


"----------Visuals----------"
colorscheme atom-dark-256
set t_CO=256 								"Use 256 colors.


"----------Search----------"
set hlsearch
set incsearch


"----------Mappings----------"

"Make it easy to edit the vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>


"----------Auto-commands----------"

"Automatically source the vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
