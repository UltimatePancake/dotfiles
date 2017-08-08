scriptencoding utf-8

" +================================================================================+
" |████████████████████████████████████████████████████████████████████████████████|
" |████████████████████▓▓▓█████████████████████████████████████████████████████████|
" |████████████████▓╣╣╣╣╣╣╣╣╣╣╣╣▓▓▓████████████████████████████████████████████████|
" |██████████████▓╣╣╣╣╣╬╬▒▒╢╬╣╣╣╣▓▓▓▓██████████████████████████████████████████████|
" |███████████▓▓▓╣╣╣╣╣▒▒▒▒▒▒▒▒▒╣╣╣╣▓▓▓█████████████████████████████████████████████|
" |███████████▓▓▓╣╣╣╣@▒▒▒▒▒▒▒▒▒▒╣╣╣╣▓▓▓▓███████████████████████████████████████████|
" |████████████▓▓▓╣╣@╬▒▒▒▒▒▒▒▒▒▒║╣╣╣▓▓▓▓▓██████████████████████████████████████████|
" |█████████████▓▓▓╣╣╣╣Ñ▒▒▒▒▒▒▒▒▒╣╣▓▓▓▓▓▓▓▓████████████████████████████████████████|
" |██████████████▓▓▓╣╣╣╣@▒▒▒▒╠╠▒▒╣╣╣▓▓▓▓▓██▓███████████████████████████████████████|
" |███████████████▓▓▓╣╣@@╬╣╣╣╣╣@@╣╣▓▓██████████████████████████████████████████████|
" |█████████████████▓▓@@▄▄▄▌▓▓▓▌▓▓▓▓▓██████████████████████████████████████████████|
" |██████████████████▓▓▓▓███████▓▓▓▓███████▓▓██████████████████████████████████████|
" |██████████████████▓▓▓█████████▓████████▓▓███████████████████████████████████████|
" |███████████████████▓▓████████▓▓████▓▓███████████████████████████████████████████|
" |███████████████████▓█▓█████▓▓▓▓▓████▓███████████████████████████████████████████|
" |█████████████████████▓▓███▌███▓█████▓▓▓█████████████████████████████████████████|
" |███████████████████████▓▓████▓▓▓█▒▀╣╣▓▓█████████████████████████████████████████|
" |█████████████████████████▓███▓▓▓▓▓▓▓▓▓███████▓██████████████████████████████████|
" |████████████████████████████████████████████▓███████████████████████████████████|
" |█████████████████████████████████████▓▓▓██▓█▓███▓███████████████████████████████|
" |██████████████████████████████████▓▓▓▓███▓▓████▓▓█████▓█████████████████████████|
" |█████████████████████████████████████████▓▌▓██▓██▓▓▓▓███████████████████████████|
" |█████████████████████████████████████████▓▌▓█▓▓████▓▓▓████████▓█████████████████|
" |█████████████████████████████████████████▌▓▓██▓███▓██▓▓▓▓▓██████████████████████|
" |██████████████████████████████████████████▓▓█▓▓███████▓▓███████████████▓████████|
" |██████████████████████████████████████████▓▓█▓▓██▓▓███████▓▓████████████▓███████|
" |██████████████████████████████████████████▌▓█▌▓█▓▓▌██████▓▓▓▓▓▓███████▓██▓██████|
" |███████████████████████████████████████████▓█▌██@██▓▓████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██████|
" |███████████████████████████████████████████▓█▓██▓██▓▓███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██████|
" |████████████████████████████████████████████████████▓██▓▓▓▓▓▓▓▓▓▓╣╣▀╣╣▓▓▓███████|
" |████████████████████████████████████████████▓▀▓▓█████▓▓▓▓▓▓▓▓▓▓▒▒▒▒║▓▓╣▓████████|
" |█████████████████████████████████████████████▓▓@▓█████▓▓▓▓▓▓▓▓╬▒▒W@▓▓▓██████████|
" |████████████████████████████████████████████████████████▓▓▓▄▓▓▄▄▄@▓▓████████████|
" |████████████████████████████████████████████████████████████████████████████████|
" |████>Make sure you use single quotes████████████████████> DOOT DOOT <███████████|
" |████████████████████████████████████████████████████████████████████████████████|
" +================================================================================+


" >-----\|/-----<
" >!> PLUGINS <!<
" >------+------<
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" You've seen some shit
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'

" A good ten-thousand times a day
Plug 'kien/ctrlp.vim'

" Vim *does* look boring
Plug 'flazz/vim-colorschemes'
Plug 'kien/rainbow_parentheses.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Because sometimes you just need to know
" remember to `ctags -R .` beforehand
Plug 'majutsushi/tagbar'

" Because I can't imagine anyone
" actually memorizing all this
Plug 'w0rp/ale'

" Commenting is annoying
Plug 'scrooloose/nerdcommenter'

" Splash screens can sometiems be useful
Plug 'mhinz/vim-startify'

" It just makes sense
Plug 'myusuf3/numbers.vim'

" Because I *should* be using f, F, t and T
Plug 'unblevable/quick-scope'

" Autocompletion without tab just feels wrong
Plug 'ervandew/supertab'

" Because Shogo's stuff requires unite
Plug 'Shougo/unite.vim'

" Sometimes it helps to see the tree
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Shougo/vimfiler.vim'

" IDEs tend to spoil people, including me :(
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" !!! deoplete completers !!!
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs'

call plug#end()


" >--\_=_=_=_=_=_=_=_/--<
" >+> PLUGIN SETTINGS <+<
" >--/‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾\--<
" rainbow_parentheses.vim
" https://github.com/kien/rainbow_parentheses.vim
augroup vim_rainbow
  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces
augroup END

" vim-airline
" https://github.com/vim-airline/vim-airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
" let g:airline_theme='base16_solarized'

" tagbar
" https://github.com/majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>

" nerdcommenter
" https://github.com/scrooloose/nerdcommenter
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1
let g:NERDDefaultAlign='left'
let g:NERDAltDelims_java=1
let g:NERDCommentEmptyLines=1
let g:NERDTrimTrailingWhitespace=1

" ale
" https://github.com/w0rp/ale
let g:airline#extensions#ale#enabled = 1
filetype off
let &runtimepath.=',~/.local/share/nvim/plugged/ale'
filetype plugin on

let g:ale_echo_msg_error_str = 'ERROR'
let g:ale_echo_msg_warning_str = 'WARN'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %s'

" deoplete
" https://github.com/Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 0

call deoplete#custom#set('jedi', 'debug_enabled', 1)
call deoplete#enable_logging('DEBUG', '/tmp/deoplete.log')

" vim-solarized8
" https://github.com/lifepillar/vim-solarized8
let g:solarized_termtrans=1

" vimfiler
" https://github.com/Shougo/vimfiler.vim
nmap <F3> :VimFiler -toggle<CR>

" deoplete ternjs
"
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete

let g:tern#filetypes = [ 'htmldjango' ]

let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

" >------><------<
" >=> SETTINGS <=<
" >--<|>----<|>--<
set number
set relativenumber

let g:mapleader=','

set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set title
set visualbell
set noerrorbells
set list
set listchars=tab:>\ ,trail:.,extends:#,nbsp:.
set conceallevel=0

nnoremap ; :
imap jk <Esc>

nnoremap <leader><space> :nohlsearch<CR>
set pastetoggle=<F2>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" set background=dark
" colorscheme solarized8_dark

set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" <>....v....<>
" <<< FIXES >>>
" <>''''^''''<>
"set t_Co=256
augroup syntaxfix
  autocmd BufEnter * :syntax sync fromstart
augroup END
