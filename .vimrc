set nocompatible
set encoding=utf-8
set wrap
set expandtab
set tabstop=2
set shiftwidth=2
set listchars=tab:\¦\
set list
set foldmethod=syntax
set foldnestmax=1
set foldlevelstart=3
set number
set relativenumber
set ignorecase
set hlsearch
set nobackup
set nowb
set noswapfile
set synmaxcol=3000
set lazyredraw

syntax on

" Activate clipboard
if has('win32')
  set clipboard=unnamed  
else
  set clipboard=unnamedplus
endif

set termguicolors
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Set font
set guifont=Consolas:h14

" Shortcut to open File explorer
map <C-n> :NERDTreeToggle<CR>
autocmd BufEnter NERD_tree_* | execute 'normal R' "Auto update files and folders

" Shortcut to oepn file and terminal
command! -nargs=1 VV rightbelow vsplit <args> "Open vertical right split file
command! -nargs=1 SS rightbelow split <args>  "Open below split file
command! Vterm rightbelow vertical terminal   "Open vertical right split terminal
command! Sterm rightbelow terminal            "Open below split terminal

if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif
