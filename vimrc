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

Bundle 'gmarik/vundle'
set shell=/bin/bash

set nofoldenable

Bundle 'kien/ctrlp.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'


" Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'matthewsimo/angular-vim-snippets'

Plugin 'mattn/emmet-vim'

Plugin 'scrooloose/nerdtree'

" Bundle 'ervandew/supertab'
" Bundle 'Valloric/YouCompleteMe'

Plugin 'plasticboy/vim-markdown'

Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'


" Color Themes
Bundle 'tomasr/molokai'

" http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
Plugin 'jelera/vim-javascript-syntax'
" mejora vista de sintaxis en javascript

" https://github.com/othree/javascript-libraries-syntax.vim
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/yajs.vim'
let g:used_javascript_libs = 'angularjs,jquery'



"https://github.com/chrisgillis/vim-bootstrap3-snippets
Bundle 'chrisgillis/vim-bootstrap3-snippets'
let g:local_vimrc = {'names':['.lvimrc'],'hash_fun':'LVRHashOfFile'}




"arbol de cambios
Plugin 'mbbill/undotree' 
nmap <C-k><C-v> :UndotreeToggle<CR>


Plugin 'tpope/vim-fugitive'



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
let g:monokai_transparent = 1





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
set number



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
" ??
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
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qa qa
cnoreabbrev Qall qall





runtime vimrc_snippets
runtime vimrc_neo





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





"test
vnoremap <Tab> >
vnoremap <S-Tab> <

" comment / decomment & normal comment behavior
" vmap <C-m> gc

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
nnoremap <leader>ev :vsp ~/.vim/vimrc<CR> " type,evto edit the Vimrc


" --------------------------
" ----- custom commands ----

"  para busqueda     :Se SearchItem scss
"  informacion sobre navegacion
"  http://stackoverflow.com/questions/7880372/going-to-next-file-after-vimgrep-in-vim-quickfix-list
" :command -nargs=+ Se execute 'vimgrep /' . [<f-args>][0] . '/ **/*.' . [<f-args>][1]

"para vista de explorador nativo de vim
let g:netrw_liststyle=3

" tabulacion - funciona bien en linux - problemas en mac
vmap <TAB> >gv
vmap <s-tab> <gv

" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %





 "NeoVim handles ESC keys as alt+key, set this to solve the problem
  if has('nvim')
     set ttimeout
     set ttimeoutlen=0
  endif


"Gdiff vertical
set diffopt+=vertical " Gdiff vertical









