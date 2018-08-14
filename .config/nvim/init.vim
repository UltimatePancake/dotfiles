scriptencoding utf-8
set shell=bash\ --login

" +================================================================================+
" |████████████████████████████████████████████████████████████████████████████████|
" |██████████████████> Lasciate ogne speranza, voi ch'intrate <████████████████████|
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
" |████> Make sure you use single quotes <█████████████████> DOOT DOOT <███████████|
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
Plug 'ctrlpvim/ctrlp.vim'

" Vim *does* look boring
Plug 'kien/rainbow_parentheses.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'ayu-theme/ayu-vim'
Plug 'Yggdroot/indentLine'
Plug 'miyakogi/seiya.vim'

" Because sometimes you just need to know
" remember to `ctags -R .` beforehand
Plug 'majutsushi/tagbar'

" Because I can't imagine anyone
" actually memorizing every convention rule
Plug 'w0rp/ale'

" Commenting is annoying
Plug 'scrooloose/nerdcommenter'

" Splash screens can sometimes be useful
Plug 'mhinz/vim-startify'

" It just makes sense
Plug 'myusuf3/numbers.vim'

" Because I *should* be using f, F, t and T
Plug 'unblevable/quick-scope'

" Autocompletion without tab just feels wrong
Plug 'ervandew/supertab'

" Do I actually need this?
Plug 'Raimondi/delimitMate'

" Because Shougo's stuff requires unite
Plug 'Shougo/unite.vim'

" Sometimes it helps to see the tree
Plug 'Shougo/vimfiler.vim'

" I need to stop doing this manually
Plug 'Chiel92/vim-autoformat'

" I forget what I change
Plug 'airblade/vim-gitgutter'

" IDEs tend to spoil people, including me :(
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
" !!! deoplete completers !!!
Plug 'zchee/deoplete-jedi', {'for': 'python'}
Plug 'carlitux/deoplete-ternjs', {'do': 'npm install -g tern'}

" Emmet, cuz I have to learn someday
Plug 'mattn/emmet-vim', {'for': ['html', 'xml', 'jsp', 'freemarker']}

" Fine, let's actually try to use snippets
Plug 'SirVer/ultisnips'

" Extra syntax
Plug 'dag/vim-fish', {'for': 'fish'}
Plug 'lepture/vim-velocity', {'for': 'velocity'}
Plug 'elixir-editors/vim-elixir', {'for': 'elixir'}
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}
Plug 'cakebaker/scss-syntax.vim', {'for': 'css'}
Plug 'andreshazard/vim-freemarker', {'for': 'freemarker'}

" TELL ME
"Plug 'wakatime/vim-wakatime'

" shits and giggles...
"Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins' }


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
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='ayu_mirage'
let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

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

" delimitmate
" https://github.com/Raimondi/delimitMate
let delimitMate_expand_cr = 1

" vimfiler
" https://github.com/Shougo/vimfiler.vim
nmap <F3> :VimFilerExplorer -toggle<CR>

" deoplete ternjs
" https://github.com/carlitux/deoplete-ternjs
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This disables full signature type on autocomplete
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

" ctrlp
" https://github.com/kien/ctrlp.vim
let g:ctrlp_max_files=0
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
nnoremap <leader>. :CtrlPMixed<CR>

" ultisnips
" https://github.com/SirVer/ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsUsePythonVersion = 3

" emmet
" https://github.com/mattn/emmet-vim
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" css3-syntax
" https://github.com/hail2u/vim-css3-syntax
augroup VimCSS3Syntax
    autocmd!

    autocmd FileType css setlocal iskeyword+=-
augroup END

" scss-syntax
" https://github.com/cakebaker/scss-syntax.vim
"au BufRead,BufNewFile *.scss set filetype=scss.css

autocmd FileType scss set iskeyword+=-
" autoformat
" https://github.com/Chiel92/vim-autoformat
noremap <F4> :Autoformat<CR>

" devicons
" https://github.com/ryanoasis/vim-devicons
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_vimfiler = 1

" javacomplete2
" https://github.com/artur-shaik/vim-javacomplete2
augroup javacompletefix
    autocmd FileType java setlocal omnifunc=javacomplete#Complete
augroup END

let g:JavaComplete_ClasspathGenerationOrder = ['Gradle', 'Maven', 'Eclipse']

" indentLine
" https://github.com/Yggdroot/indentLine
let g:indentLine_char = '┆'
let g:indentLine_first_char = '┆'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

" seiya
" https://github.com/miyakogi/seiya.vim
let g:seiya_auto_enable=1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']


" <>....v....<>
" <<< FIXES >>>
" <>''''^''''<>
set t_Co=256
augroup syntaxfix
    autocmd BufEnter * :syntax sync fromstart
augroup END


" >------><------<
" >=> SETTINGS <=<
" >--<|>----<|>--<
set number
set relativenumber

" COLOR FIXES
set termguicolors
" options are light, mirage or dark
let ayucolor="mirage"
set background=dark
colorscheme ayu
" COLOR FIXES

let g:mapleader=','

nnoremap j gj
nnoremap k gk

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

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

" MAN MODE
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" MAN MODE

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab

set autoindent
"set textwidth=80

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

nnoremap <Space> za

set noautochdir
set nowrap
set hidden

cmap w!! %!sudo tee > /dev/null %

nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
nnoremap <A-h> <<
nnoremap <A-l> >>
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv
vnoremap <A-h> <gv
vnoremap <A-l> >gv

vmap <silent> L :bn!<cr>
nmap <silent> L :bn!<cr>
vmap <silent> H :bp!<cr>
nmap <silent> H :bp!<cr>

set cursorline
