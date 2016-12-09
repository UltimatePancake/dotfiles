" Force bash
set shell=bash

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'Valloric/YouCompleteMe'
Plugin 'othree/xml.vim'
Plugin 'andreshazard/vim-freemarker'
Plugin 'tpope/vim-commentary'
Plugin 'luochen1990/rainbow'
Plugin 'airblade/vim-gitgutter'

" Themes


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Syntax
syntax on

" COLORS MUHGHFUGHAAAAAAAA
colorscheme gryffin
set background=dark

" Change leader key
let mapleader=","

" Hide buffers instead of changing
set hidden

" >>>EXTRAS
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
"set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" I HATE YOUR STUPID SWP FILES
set nobackup
set noswapfile

" I HATE WHEN PEOPLE LEAVE WHITESPACE FOR NO REASON
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set pastetoggle=<F2>

" SO WHAT IF I ENABLE THE MOUSE?!
"set mouse=a

" SCREW YOU, I'M LAZY
nnoremap ; :

" MAN MODE
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nmap <silent> ,/ :nohlsearch<CR>

" I SAID WRITE
cmap w!! w !sudo tee % >/dev/null

set ttimeoutlen=50

" >>>PLUGIN EXTRAS
" NERDTREE
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" COLORS MUHFUCKA!
set t_Co=256

" AIRLINE
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='raven'
let g:airline_right_alt_sep = '▒'
let g:airline_right_sep = '▒'
let g:airline_left_alt_sep= '▒'
let g:airline_left_sep = '▒'

" TAB SWITCHING MUHFUCKA!!
nnoremap <C-q> :bprevious<CR>
nnoremap <C-e> :bnext<CR>

" GOD DAMMIT I SAID READ THE DAMN INCOMING CHANGES!
set autoread

" OLD HABITS...
nnoremap <C-s> :write<CR>

" ARE YOU SERIOUS LIFERAY?! ARE YOU SERIOUS?!?!
let g:syntastic_java_javac_custom_classpath_command = "ant -q get-classpath | grep echo | cut -f2- -d] | tr -d ' ' | tr ':' '\n'"

" YCM and Eclim playing nice now...
let g:EclimCompletionMethod = 'omnifunc'

" WHAT DOES IT MEEEEEAN?!
let g:rainbow_active = 1

" GOD DAMMIT JAVA
let java_highlight_functions = 1

" WHY TWICE?!
set noshowmode

" TAGBAR
nmap <F8> :TagbarToggle<CR>

" PANE MOVEMENT
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
