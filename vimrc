" vim-sublime - A minimal Sublime Text -like vim experience bundle
"               http://github.com/grigio/vim-sublime
" Best view with a 256 color terminal and Powerline fonts

"para recargar el vimrc desde el mismo archivo, usar :so %
" ayuda : http://dougblack.io/words/a-good-vimrc.html


set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/vimSnippets/angular-vim-snippets/snippets/

call vundle#rc()

Plugin 'gmarik/vundle'
set shell=/bin/bash

set nofoldenable

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

Plugin 'kien/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'

"http://www.vim.org/scripts/script.php?script_id=2940
Plugin 'MarcWeber/vim-addon-mw-utils'

" Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" Plugin 'matthewsimo/angular-vim-snippets'
Plugin 'kashiro/vim-angular-snippets'

Plugin 'mattn/emmet-vim'

Plugin 'scrooloose/nerdtree'

Plugin 'godlygeek/tabular'

Plugin 'ervandew/supertab'
" Plugin 'Valloric/YouCompleteMe'

Plugin 'plasticboy/vim-markdown'


Plugin 'gregsexton/MatchTag'
Plugin 'luochen1990/rainbow'

"
"
" Plugin 'craigemery/vim-autotag'
" Plugin 'majutsushi/tagbar'
" nmap <leader>t :TagbarToggle<CR>
" nnoremap <leader>jt :! jsctags -o components shared<CR>

" Plugin 'Shougo/deoplete.nvim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'


" Color Themes
Plugin 'tomasr/molokai'

Plugin 'scrooloose/syntastic'
let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*




" mejora vista de sintaxis en javascript
" http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
Plugin 'jelera/vim-javascript-syntax'

" https://github.com/othree/javascript-libraries-syntax.vim
Plugin 'othree/jsdoc-syntax.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/html5.vim'

" https://github.com/pangloss/vim-javascript
Plugin 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"




let g:used_javascript_libs = 'angularjs,jquery,angularui, angularuirouter'





"https://github.com/chrisgillis/vim-bootstrap3-snippets
Plugin 'chrisgillis/vim-bootstrap3-snippets'
let g:local_vimrc = {'names':['.lvimrc'],'hash_fun':'LVRHashOfFile'}




"arbol de cambios
" Plugin 'mbbill/undotree' 
" nmap <C-k><C-v> :UndotreeToggle<CR>


Plugin 'tpope/vim-fugitive'

Plugin 'Yggdroot/indentLine'



"cambio de NERDTreeToggle con compando de sublime
nmap <C-k><C-b> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 20



"Color and theme
colorscheme molokai
let g:molokai_original = 0
let g:rehash256 = 1



" rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
  let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,\|+\|-\|*\|\/\|===\|!==_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {
    \       },
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': 0,
    \       'css':{
    \        'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold']
    \       }
    \   }
    \}

  if exists(':RainbowToggleOn') | exe "RainbowToggleOn" | endif




runtime vimrc_snippets
runtime vimrc_deo

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8





if has('autocmd')
  filetype plugin indent on
endif
syntax enable

" Use :help 'option' to see the documentation for the given option.
set autoindent
set backspace=indent,eol,start
set complete-=i
set showmatch
set showmode
set smarttab
set gdefault " para dejar a g como default en las busquedas

set nrformats-=octal
set shiftround

set ttimeout
set ttimeoutlen=50

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
"muestra cursor
set ruler
set showcmd
set wildmenu

set autoread

" tabs de 2 espacios, no tabs, sino espacios
set tabstop=2
set shiftwidth=2
set expandtab
set listchars=tab:▒░,trail:▓
set list

inoremap <C-U> <C-G>u<C-U>

" muestra numeros
" set number

set number
set cursorline
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber


""BUSQUEDAS -------------

" busqueda en tiempo real
set incsearch
"highlight a la busqueda
set hlsearch
set ignorecase
set smartcase


" Don't use Ex mode, use Q for formatting
" esto ayuda para formatear parrafos de un ancho determinado
" default 70 caracteres
map Q gq


" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif
set mousemodel=popup


" do not history when leavy buffer
set hidden

set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

" exit insert mode
inoremap <C-c> <Esc>

set completeopt=menuone,longest,preview






"*****************************************************************************
"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev qw wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev Qall qall





set colorcolumn=100
let g:indentLine_color_term = 239
let g:indentLine_enabled = 1



"*****************************************************************************
" Plugins config
"*****************************************************************************

" CtrlP

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" comando para optimizar la busqueda, intalar silversearcher-ag
" con esto se puede usar un .agignore
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"autocompletado en comandos de exmode
set wildmode=list:longest,list:full
set wildignore+=*/.git/*,*/.hg/*,*/.svn/* 



" vim-airline and tabs
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
nnoremap <C-t>  :tabnew<CR>
inoremap <C-t>  <Esc>:tabnew<CR>i
nnoremap <C-k>  :tabclose<CR>
inoremap <C-k>  <Esc>:tabclose<CR>i
nnoremap <A-a> <C-a>
nnoremap <A-x> <C-x>






" comment / decomment & normal comment behavior
vmap <C-m> gc
vmap <CR> gc

" Disable tComment to escape some entities
let g:tcomment#replacements_xml={}

" Text wrap simpler, then type the open tag or ',"
" vmap <C-w> S



let mapleader = ','
nnoremap <Leader>p :set paste<CR>
nnoremap <Leader>o :set nopaste<CR>
noremap  <Leader>g :GitGutterToggle<CR>

"**********************
" GitGutter
"**********************
"para git gutter en real time
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '➜'
" GitGutterLineHighlightsEnable


" this machine config
" para cambios locales
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif


" para guardar una sesion presionando ,s
nnoremap <leader>s :mksession!<CR> " type ',s' to save the buffers etc. Reopen where you were with Vim with 'vim -S'

"para abrir el .vimrc mas rapidamente
nnoremap <leader>ev :vsp ~/.vim/vimrc<CR> " type ,ev to edit the Vimrc
nnoremap <leader>er :so ~/.vim/vimrc<CR> " refresh vimrc

" --------------------------
" ----- custom commands ----

"  para busqueda     :Se SearchItem scss
"  informacion sobre navegacion
"  http://stackoverflow.com/questions/7880372/going-to-next-file-after-vimgrep-in-vim-quickfix-list
" :command -nargs=+ Se execute 'vimgrep /' . [<f-args>][0] . '/ **/*.' . [<f-args>][1]

"para vista de explorador nativo de vim
let g:netrw_liststyle=1


" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %





 "NeoVim handles ESC keys as alt+key, set this to solve the problem
  if has('nvim')
     set ttimeout
     set ttimeoutlen=0
  endif


"Gdiff vertical
set diffopt+=vertical " Gdiff vertical

vmap <C-c> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!xclip -selection c<CR>u

if has("gui_running")
  "Gvim
  " set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set gfn=Hack\ 10
else
  "else
endif



