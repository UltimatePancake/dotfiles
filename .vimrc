" Force bash
set shell=bash\ --login

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
Plugin '907th/vim-auto-save'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'Chiel92/vim-autoformat'
Plugin 'chrisbra/Colorizer'
Plugin 'kien/ctrlp.vim'
Plugin 'luochen1990/rainbow'
Plugin 'majutsushi/tagbar'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'yggdroot/indentline'

" Plugin tryouts
Plugin 'mhinz/vim-startify'
Plugin 'myusuf3/numbers.vim'
Plugin 'unblevable/quick-scope'
Plugin 'SirVer/ultisnips'

" Plugins falling out of favour
"Plugin 'easymotion/vim-easymotion' " quick-scope teaching me to properly use f, F, t and T
Plugin 'scrooloose/nerdtree' " learning to use more of ctrlP and tags has almost made this useless

" More syntax highlighting and lang-specific functions
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'andreshazard/vim-freemarker'
Plugin 'dag/vim-fish'
Plugin 'rodjek/vim-puppet'
Plugin 'hashivim/vim-vagrant'
Plugin 'othree/xml.vim'
"Plugin 'justinj/vim-pico8-syntax'

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'


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
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1

" Syntax fix :(
autocmd BufEnter * :syntax sync fromstart

" COLORS MUHGHFUGHAAAAAAAA
set background=dark

" Change leader key
let mapleader=","

" Hide buffers instead of changing
set hidden

" >>>EXTRAS
set nowrap        " don't wrap lines
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" SOFT TABS! SOFT! WHAT PART OF THAT DO YOU NOT UNDERSTAND?
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" I HATE YOUR STUPID SWP FILES
set nobackup
set noswapfile

" I HATE WHEN PEOPLE LEAVE WHITESPACE FOR NO REASON
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.

" PASTE MODE
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

" I SAID WRITE
cmap w!! w !sudo tee % >/dev/null

" INSTANT MODE CHANGE VISUALIZATION
set ttimeoutlen=50

" >>>PLUGIN EXTRAS
" NERDTREE
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" NERDCOMMENTS
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1

" SYNTASTIC PLS
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" COLORS MUHFUCKA!
"set t_Co=256

" AIRLINE
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='term'
let g:airline_right_alt_sep = '▒'
let g:airline_right_sep = '▒'
let g:airline_left_alt_sep= '▒'
let g:airline_left_sep = '▒'
let g:airline#extensions#tabline#left_sep = '▒'
let g:airline#extensions#tabline#left_alt_sep = '▒'

let g:airline_theme='term'

" TAB SWITCHING MUHFUCKA!!
nnoremap <C-q> :bprevious<CR>
nnoremap <C-e> :bnext<CR>
nnoremap <C-w> :bdelete<CR>

" GOD DAMMIT I SAID READ THE DAMN INCOMING CHANGES!
set autoread

" OLD HABITS...
nnoremap <C-s> :write<CR>

" ARE YOU SERIOUS LIFERAY?! ARE YOU SERIOUS?!?!
"let g:syntastic_java_javac_custom_classpath_command = "ant -q get-classpath | grep echo | cut -f2- -d] | tr -d ' ' | tr ':' '\n'"

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
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" BETTER SPLITS
set splitbelow
set splitright

" NUMBAAAAAHS
set number
set relativenumber

" TAGBAR
nmap <F8> :TagbarToggle<CR>

" INDENT GUIDES
let g:indentLine_enabled = 1
let g:indentLine_char = '┆'

" I SAID NOHL
nnoremap <leader><space> :nohlsearch<CR>

" REMOVE ALL WHITESPACE WITH F5
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" SCREW YOU JSON
set conceallevel=0

" I SAID PYTHON 3 DAMMIT
let g:ycm_server_python_interpreter = "/usr/bin/python3"

" NO YCM WHY
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

" still skeptical, trying this out
imap jk <Esc>

" Pico launch
"command Pico :silent ! /home/pancake/.local/bin/pico8 -run %

" Colorizer
let g:colorizer_auto_color = 1

" Autosave
let g:auto_save = 1

" Indent guides
let g:indentLine_char = '¦'

" blah blah blah tags
set tags=tags;/

" tags + ctrlp
nnoremap <leader>. :CtrlPTag<CR>

" trying stuff out
set wildmenu
"set wildmode=list:longest
set wildmode=list:full

set ruler
