" vim-sublime - A minimal Sublime Text -like vim experience bundle
"               http://github.com/grigio/vim-sublime
" Best view with a 256 color terminal and Powerline fonts

"para recargar el vimrc desde el mismo archivo, usar :so %
" ayuda : http://dougblack.io/words/a-good-vimrc.html


" Install Valloric/YouCompleteMe
" http://christopherpoole.github.io/setting-up-vim-with-YouCompleteMe/



set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/vimSnippets/angular-vim-snippets/snippets/

call vundle#rc()
Bundle 'gmarik/vundle'
set shell=/bin/bash

set nofoldenable


Bundle 'tpope/vim-surround'
Bundle 'gcmt/breeze.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'SirVer/ultisnips'
Bundle 'tomtom/tcomment_vim'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'severin-lemaignan/vim-minimap'

Plugin 'scrooloose/nerdtree'

"https://github.com/kwaledesign/scss-snippets
Bundle 'kwaledesign/scss-snippets'

" Bundle 'Valloric/YouCompleteMe'

" Bundle 'ervandew/supertab'

" Color Themes
Bundle 'flazz/vim-colorschemes'
Bundle 'tomasr/molokai'
Bundle 'tristen/vim-sparkup'

" https://github.com/nanotech/jellybeans.vim
Bundle 'nanotech/jellybeans.vim'

" http://www.vim.org/scripts/script.php?script_id=1891
Bundle 'tpope/vim-vividchalk'

" https://github.com/pangloss/vim-javascript
Bundle 'pangloss/vim-javascript'

" http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
Plugin 'jelera/vim-javascript-syntax'

" Plugin 'Yggdroot/indentLine'
filetype plugin indent on 


nmap <C-k><C-b> :NERDTreeToggle<CR>

colorscheme Monokai
" colorscheme molokai
" colorscheme badwolfi


""""""""
if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

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

" busqueda en tiempo real
set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
set ruler
set showcmd
set wildmenu

set autoread

set encoding=utf-8
" tabs de 2 espacios, no tabs, sino espacios
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:▓
set list

inoremap <C-U> <C-G>u<C-U>

" muestra numeros
set number

"highlight a la busqueda
set hlsearch
set ignorecase
set smartcase

" Don't use Ex mode, use Q for formatting
map Q gq

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" do not history when leavy buffer
set hidden

set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

" exit insert mode 
inoremap <C-c> <Esc>

set completeopt=menuone,longest,preview

"
" Plugins config
"

" CtrlP

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" comando para optimizar la busqueda, intalar silversearcher-ag
" con esto se puede usar un .agignore
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

set wildignore+=*/.git/*,*/.hg/*,*/.svn/* 


" Ultisnip
" NOTE: <f1> otherwise it overrides <tab> forever

"http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
"" YouCompleteMe
"" Ultisnips
" make YCM compatible with UltiSnips (using supertab)

let g:UltiSnipsExpandTrigger="<f1>"
let g:UltiSnipsJumpForwardTrigger="<f1>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:did_UltiSnips_vim_after = 1



let g:UltiSnipsSnippetsDir="~/.vim/vimSnippets/angular-vim-snippets/UltiSnips/"

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"
" Basic shortcuts definitions
"  most in visual mode / selection (v or ⇧ v)
"

" Find
" map <C-f> /
" indend / deindent after selecting the text with (⇧ v), (.) to repeat.
" vnoremap <Tab> >
" vnoremap <S-Tab> <
" comment / decomment & normal comment behavior
vmap <C-m> gc
" Disable tComment to escape some entities
let g:tcomment#replacements_xml={}
" Text wrap simpler, then type the open tag or ',"
vmap <C-w> S

" Tabs
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
nnoremap <C-b>  :tabprevious<CR>
inoremap <C-b>  <Esc>:tabprevious<CR>i
nnoremap <C-n>  :tabnext<CR>
inoremap <C-n>  <Esc>:tabnext<CR>i
nnoremap <C-t>  :tabnew<CR>
inoremap <C-t>  <Esc>:tabnew<CR>i
nnoremap <C-k>  :tabclose<CR>
inoremap <C-k>  <Esc>:tabclose<CR>i

" lazy ':'
map \ :

let mapleader = ','
nnoremap <Leader>p :set paste<CR>
nnoremap <Leader>o :set nopaste<CR>
noremap  <Leader>g :GitGutterToggle<CR>

"para git gutter en real time
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1

let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '➜'
" GitGutterLineHighlightsEnable

"para ver la columna negra
highlight SignColumn ctermbg=black



" this machine config
" para cambios locales
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif


" para guardar una sesion presionando ,s
nnoremap <leader>s :mksession!<CR> " type ',s' to save the buffers etc. Reopen where you were with Vim with 'vim -S'

"para abrir el .vimrc mas rapidamente

nnoremap <leader>ev :vsp ~/.vim/vimrc<CR> " type,evto edit the Vimrc

" ctrl + shift abajo y arriba para mover una linea
nnoremap <C-Down> :m+1<CR>
nnoremap <C-Up> :m-1<CR>


" --------------------------
" ----- custom commands ----

"  para busqueda     :Se SearchItem scss
"  informacion sobre navegacion
"  http://stackoverflow.com/questions/7880372/going-to-next-file-after-vimgrep-in-vim-quickfix-list
" :command -nargs=+ Se execute 'vimgrep /' . [<f-args>][0] . '/ **/*.' . [<f-args>][1]

let g:netrw_liststyle=3

" tabulacion
vmap <Tab> >gv
vmap <S-Tab> <gv

" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %



" " https://github.com/Yggdroot/indentLine
" " Vim
" let g:indentLine_color_term = 239
"
" "GVim
" let g:indentLine_color_gui = '#A4E57E'
"
" " none X terminal
" let g:indentLine_color_tty_light = 7 " (default: 4)
" let g:indentLine_color_dark = 1 " (default: 2)
"
" let g:indentLine_char = '︙'
"
