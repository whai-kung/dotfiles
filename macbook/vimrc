" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" Eliminating delays on ESC
set timeoutlen=1000 ttimeoutlen=0

" turn filetype detection off and, even if it's not strictly
" necessary, disable loading of indent scripts and filetype plugins
filetype off
filetype plugin indent off

" pathogen runntime injection and help indexing
call pathogen#infect()
call pathogen#helptags()

" turn filetype detection, indent scripts and filetype plugins on
" and syntax highlighting too
filetype plugin indent on
syntax on

"--------
" Vim UI
"--------
" color scheme
set background=dark
color solarized

" search
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap <silent> ,/ :nohlsearch<CR>

" editor settings
set nobackup													  " do not keep backup files
set noswapfile													  " do not write swap file
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set report=0                                                      " always report number of lines changed
set wrap                                                          " wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html

" Copy
set clipboard=unnamed
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set smarttab		" insert tabs on the start of a line according to shiftwidth, not tabstop

autocmd filetype javascript set sw=2 ts=2 expandtab

" Mako/HTML
autocmd BufNewFile,BufRead *.mako,*.mak,*.jinja2 setlocal ft=html
autocmd FileType html,xhtml,xml,css setlocal expandtab shiftwidth=2 tabstop=2

"-----------------
" Plugin settings
"-----------------
"" Auto complete code

" Rainbow Parentheses
let g:rainbow_active = 1

" Nerd Tree
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeWinSize=25
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWinEnter * NERDTreeMirror

" YouComplateMe
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_max_num_candidates = 30

" vim-syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

" vim-json
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
  autocmd FileType json set foldmethod=syntax
augroup END

" shortcut key for syntastic
map <PageDown> :lnext<CR>
map <PageUp> :lprevious<CR>

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType c setlocal omnifunc=ccomplete#Complete

" Disable beep and flash with an autocmd
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" ctrlp
" set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
" let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
" nnoremap <F2> :set invpaste paste?<CR>
" set pastetoggle=<F2>
set paste

map <F4> :NERDTreeToggle<CR>

" map <F12> :MouseToggle<CR>		" Activated via plugin already
nmap <D-/> :

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" navigation batween tab
map <C-\> :tabn<CR>
map <C-]> :tabp<CR>
map <C-t> :tabnew<CR>

" nmap <silent> <leader>sv :so $MYVIMRC<CR>

