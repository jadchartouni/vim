set nocompatible              			"Enable the latest Vim settings/options.

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start			"Make backspace behave like every other editor.
let mapleader = ','				"The default leader is \, but a comma is much better.
set number					"Activate line numbers


"----------Visuals----------"
colorscheme atom-dark-256
set t_CO=256 					"Use 256 colors.


"----------Search----------"
set hlsearch
set incsearch


"----------Split management----------"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"----------Mappings----------"

"Make it easy to edit the vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle
nmap <D-1> :NERDTreeToggle<cr>

"----------Auto-commands----------"

"Automatically source the vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
