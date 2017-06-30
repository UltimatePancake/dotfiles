" >========================================<
" > Lasciate ogne speranza, voi ch'intrate <
" >========================================<

" ░█████░░░░░█████░
" █░░░░░█░░░█░░░░░█
" ░░███░░░░░░░███░░█
" ░█░░░█░░░░░█░░░██
" █░░░███░░░█░░░███
" █░░████░░░█░░████
" █░░░███░░░█░░░███
" ░█░░░█░░░░░█████
" ░░███░░░░░█░░░░░██
" ░░░░░░░░░░░░░░░░░█ █
" ░░██░░░░██░░░░░░░░███
" ░░░████████░░░░░░░███
" ░░░░████████░░░░░███
" ░░░░░░████████████
" ░░░░░░░░░░░░░░░█
" ░░░░░░░░░░░░░░█
" ██░░░░░░░░░░███
" █░░░░░░░░░░█
" █░░░░░░░░█
" █░░░░░░█

" force bash
" I don't remember what went wrong
" but whatever it was, my gut now tells me that whenever this isn't around
" all hell breaks loose... something about fish
set shell=bash\ --login

" >============<
" >>> VUNDLE <<<
" >============<

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

" >===============<
" >>> QoL stuff <<<
" >===============<

" syntax
syntax on
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1

" syntax getting wonky fix
autocmd BufEnter * :syntax sync fromstart

" doesn't do what I think it does, but needed for transparency
set background=dark

" more convenient leader key
let mapleader=","

" hide buffers instead of changing
set hidden

" don't wrap lines
set nowrap

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" always set autoindenting on
set autoindent

" use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" set show matching parenthesis
set showmatch

" ignore case when searching
set ignorecase

" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase

" highlight search terms
set hlsearch

" show search matches as you type
set incsearch

" remember more commands and search history
set history=1000

" use many muchos levels of undo
set undolevels=1000

" self explanatory
set wildignore=*.swp,*.bak,*.pyc,*.class

" change the terminal's title
set title

" don't beep
set visualbell

" seriously, don't beep
set noerrorbells

" soft tabs, 4 spaces, no one likes you \t, go away
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

" no swp file, yes, dangerous at times, looking for better solution
set nobackup
set noswapfile

" highlight whitespace and tabs, used for cleanup
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.

" paste mode, only used to preserve indentation
set pastetoggle=<F2>

" pinnacle of laziness, saves a keypress
nnoremap ; :

" vim, man mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" real line navigation
nnoremap j gj
nnoremap k gk

" easier split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" don't remember why I have this twice
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" those times when you forget to sudoedit
cmap w!! w !sudo tee % >/dev/null

" reduce delay of mode change visualization
set ttimeoutlen=50

" still not used to it, but definitely convenient
imap jk <Esc>

" easier buffer switching
nnoremap <C-q> :bprevious<CR>
nnoremap <C-e> :bnext<CR>
nnoremap <C-w> :bdelete<CR>

" read incoming changes
set autoread

" java-tweaks because it hates everything
let java_highlight_functions = 1

" more predictable splits
" set splitbelow
" set splitright

" line numbers, relative numbers
set number
set relativenumber

" clear search highlights
nnoremap <leader><space> :nohlsearch<CR>

" bind F5 to clear all trailing whitespace
nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" force no concealment of quotes, using to avoid confusion when editing JSON files
set conceallevel=0

" stuff I'm trying out
set wildmenu
set ruler

" >===================<
" >>> PLUGIN EXTRAS <<<
" >===================<

" NERDTREE
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" NERDCOMMENTER
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1

" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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

set noshowmode " avoid vim showing mode, since airline handles this

" YOUCOMPLETEME
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_server_python_interpreter = "/usr/bin/python3"
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'

" RAINBOW
let g:rainbow_active = 1

" TAGBAR
nmap <F8> :TagbarToggle<CR>
set tags=tags;/

" INDENTLINE
let g:indentLine_enabled = 1
let g:indentLine_char = '¦'

" COLORIZER
let g:colorizer_auto_color = 1

" AUTOSAVE
let g:auto_save = 1

" CTRLP
nnoremap <leader>. :CtrlPTag<CR>

" GITGUTTER
let g:gitgutter_max_signs=9999
