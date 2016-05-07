syntax on
set t_Co=256
colorscheme molokai
set tags=tags;/

set number " show line numbers
set expandtab " expand tabs to spaces
set tabstop=2 " tab = 2 speaces
set shiftwidth=2 "indent
set hls is " highlight search, incremental search
set autoindent
set ruler
set history=100
set showcmd
execute pathogen#infect()
set shell=zsh
"set shellcmdflag=-ci
set list

set listchars=tab:>-,trail:- " show tabs and trailing spaces
"set listchars=trail:- " show tabs and trailing spaces
"autocmd FileType go set listchars-=tab:>-  " dont show tabs for golang

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
set backspace=indent,eol,start

set laststatus=2


" statusline
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
set statusline=%<\ b%n\ \ \ %f\ \ \ %h%m%r%y\ \ \ line:%l\ of\ %L\ col:%c%V

" jj in insert mode will switch back to normal 
:inoremap jj <Esc>

set modeline
set ls=2
" syntax highlight *.thor files as ruby
au BufRead,BufNewFile *.thor set filetype=ruby
" auto trim trailing whitespace on save
autocmd FileType c,cpp,java,php,coffee,javascript,ruby,scala,go autocmd BufWritePre <buffer> :%s/\s\+$//e
set backspace=indent,eol,start "fix for behavoir of backspace key

" alias common slow-shift typos to intended commands :W => :w
command WQ wq
command Wq wq
command BW bw
command Bw bw
command BP bp
command Bp bp
command W w
command Q q

" fix for scrolling and selection on Mac OSX 10.10.2
set mouse=a

" allows h,l to wrap to next line when it reaches beginning or EOL
set whichwrap+=<,>,h,l


" ctrlp vim plug in override options
" use find for building file index instead of vim globbing (buggy in OSX)
let g:ctrlp_user_command = 'find %s -type f -not \( -path "*/.git/*" -prune \)  -not \( -path "*node_modules*" -prune \) -not \( -path "*coverage*" -prune \)'
" increase the default max size of results
let g:ctrlp_match_window = 'max:35'
" enable cross session caching
let g:ctrlp_clear_cache_on_exit = 0
" max number fo files to scan
let g:ctrlp_max_files = 100000
let g:ctrlp_max_depth = 100
" default mode to open CtrlP in
let g:ctrlp_cmd = 'CtrlP'
" fix for randome issue with writing to crontab via tmp files on OSX 10.10
autocmd Filetype crontab setlocal nobackup nowritebackup

" set indent on certain file types to 4
autocmd FileType javascript,python,json set tabstop=4|set shiftwidth=4
autocmd BufRead,BufNewFile *.json set tabstop=4|set shiftwidth=4
" go uses 8
autocmd FileType go set tabstop=4|set shiftwidth=4|set noexpandtab|set nolist

" syntastic
set statusline+=\ \ %#warningmsg#
set statusline+=\ \ %{SyntasticStatuslineFlag()}
set statusline+=%*

" always fill in the location list when syntastic runs
let g:syntastic_always_populate_loc_list = 1
" auto open/close the location list   0 none  1 auto open&close  2 auto close
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
" don't check on :wq in active mode
let g:syntastic_check_on_wq = 0
" enable ballons,  vim must be compiled with some balloons option
let g:syntastic_enable_balloons = 0
" Better :sign interface symbols
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '!'

"short command aliases
command Sc SyntasticCheck
command Sm SyntasticToggleMode
command Si SyntasticInfo
command Sr SyntasticReset

let g:syntastic_javascript_checkers = ["standard"]
let g:syntastic_mode_map = {
  \ "mode": "active",
  \ "active_filetypes": [],
  \ "passive_filetypes": [] }

let g:syntastic_quiet_messages = {
      \ "regex":   '.*Rule.*was removed and replaced by.*' }

" end syntastic

" set a light grey vertical line at max column width
set colorcolumn=81

" re-map Shift-Tab to de-tab  (outdent)
  " normal mode
  nnoremap <S-Tab> <<
  "insert mode
  inoremap <S-Tab> <C-d>



" YouCompleteMe
""
""set nocompatible
""filetype off
""
""set rtp+=~/.vim/bundle/vundle
""call vundel#rc()
""
""Bundle 'gmarik/vundle'
""
""Bundle 'Valloric/YouCompleteMe'
""Bundle 'Valloric/ListToggle'
""Bundle 'scrooloose/syntastic'
