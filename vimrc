set nocompatible              			    " Enable the latest Vim settings/options.

so ~/.vim/plugins.vim

syntax enable

let mapleader = ','				            " The default leader is \, but a comma is much better.

colorscheme atom-dark
set t_CO=256 					            " Use 256 colors.
set background=dark
set backspace=indent,eol,start			    " Make backspace behave like every other editor.
set encoding=utf-8
set showmode 					            " Always show current mode
set nowrap					                " Don't wrap lines by default
set nobackup					            " Delete backup file immediately on successful write
set autowrite 					            " Save on buffer switch
set number					                " Activate line numbers
set tabstop=4 					            " A tab is four spaces
set smarttab
set softtabstop=4 				            " When deleting, pretend 4 spaces are a tab
set expandtab					            " Expand tab by default
set shiftwidth=4				            " Number of spaces to use for auto-indenting
set shiftround					            " Use multiple of shiftwidth when indenting with '<' and '>'
set autoindent 					            " Set auto-indenting on
set copyindent 					            " Copy previous indentation on auto-intendting
set hlsearch
set incsearch
set ignorecase 					            " Ignore case when searching
set smartcase 					            " Ignore case if search pattern is all lowercase
set splitbelow					            " Change default split to below
set splitright					            " Change default vsplit to right
set visualbell 					            " Don't beep
set noerrorbells 				            " Don't beep
set timeout timeoutlen=200 ttimeoutlen=100	" Adjust timeout
set noshowmode                              " Hide the default mode text


"---------- Mappings ----------"

" Make it easier to move between splits
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" Fast save
nmap <leader>w :w!<cr>
nmap <leader><space> :nohlsearch<cr>

" Easy escaping to normal model
imap jj <esc>

" Down is really the next line
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'

" Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<cr>:pwd<cr>

" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>

" Make it easy to edit the vimrc file.
nmap <leader>ev :tabedit $MYVIMRC<cr>
nmap <leader>s :source ~/.vimrc<cr>

" Make NERDTree easier to toggle
nmap <leader>1 :NERDTreeToggle<cr>

" Make CtrlP Buf easier to toggle
nmap <leader>t :CtrlPMRUFiles<cr>
nmap <leader>r :CtrlPBufTag<cr>

" Look for a tag
nmap <leader>f :tag<space>


"---------- Plugins configuration ----------"
" CtrlP configuration
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'

" NERDTree configuration
let NERDTreeHijackNetrw = 0


"---------- Auto-commands ----------"

" Automatically source the vimrc file on save.
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

