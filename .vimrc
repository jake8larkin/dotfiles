syntax on
set t_Co=256
colorscheme molokai
set tags=tags;/

set number " show line numbers
set expandtab " expand tabs to spaces
set tabstop=2 " tab = 2 speaces
set hls is " highlight search, incremental search
" set autoindent
set ruler
set history=100
set showcmd
execute pathogen#infect()
set shell=zsh
set shellcmdflag=-ci
set list
set listchars=tab:>-,trail:- " show tabs and trailing spaces
set ignorecase " Make searches case insensitive.
set smartcase " Make searches case-sensitive if they contain upper-case

" Wildignore RBC and doc files
set wildignore+=*.rbc,doc/*,spec/cassettes/*,tags,junit/*
" Set spelling region to English
set spelllang=en
" Use proper clipboard
set clipboard=unnamed
" make the paren highlighting less distracting, swap fg and bg colors
highlight MatchParen ctermfg=208 ctermbg=16
