set nocompatible              			"Enable the latest Vim settings/options.

so ~/.vim/plugins.vim

syntax enable

let mapleader = ','				"The default leader is \, but a comma is much better.

colorscheme atom-dark
set t_CO=256 					"Use 256 colors.
set background=dark
set backspace=indent,eol,start			"Make backspace behave like every other editor.
set encoding=utf-8
set nowrap					"Don't wrap lines by default
set number					"Activate line numbers
set hlsearch
set incsearch
set splitbelow					"Change default split to below
set splitright					"Change default vsplit to right

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"----------Mappings----------"

"Make it easy to edit the vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <leader>s :source ~/.vimrc<cr>
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle
nmap <Leader>1 :NERDTreeToggle<cr>

"Make CtrlP Buf easier to toggle
nmap <Leader>e :CtrlPMRUFiles<cr>
nmap <Leader>r :CtrlPBufTag<cr>


"----------Plugins configuration----------"
"CtrlP configuration
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:10'

"NERDTree configuration
let NERDTreeHijackNetrw = 0

"----------Auto-commands----------"

"Automatically source the vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

