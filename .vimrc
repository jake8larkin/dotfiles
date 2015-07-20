syntax on
set t_Co=256
colorscheme molokai
set tags=tags;/

set number " show line numbers
set expandtab " expand tabs to spaces
set tabstop=2 " tab = 2 speaces
set shiftwidth=2
set hls is " highlight search, incremental search
" set autoindent
set ruler
set history=100
set showcmd
execute pathogen#infect()
set shell=zsh
"set shellcmdflag=-ci
set list
set listchars=tab:>-,trail:- " show tabs and trailing spaces
set ignorecase " Make searches case insensitive.
set smartcase " Make searches case-sensitive if they contain upper-case

" Wildignore RBC and doc files
set wildignore+=*.rbc,doc/*,*spec/cassettes/*,*tags*,*junit*,*target*
" Set spelling region to English
set spelllang=en
" Use proper clipboard
set clipboard=unnamed
" make the paren highlighting less distracting, swap fg and bg colors
highlight MatchParen ctermfg=208 ctermbg=16
" enable ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
set backspace=indent,eol,start

autocmd FileType c,cpp,java,rb,ruby,thrift,scala autocmd BufWritePre <buffer> :%s/\s\+$//e 
set laststatus=2

" fix for scrolling and selection on Mac OSX 10.10.2
set mouse=a

" ctrlp vim plug in override options
" use find for building file index instead of vim globbing (buggy in OSX)
let g:ctrlp_user_command = 'find %s -type f'
" increase the default max size of results
let g:ctrlp_match_window = 'max:35'
" enable cross session caching
let g:ctrlp_clear_cache_on_exit = 0
" max number fo files to scan
let g:ctrlp_max_files = 100000
let g:ctrlp_max_depth = 100
" default mode to open CtrlP in
let g:ctrlp_cmd = 'CtrlPMixed'

