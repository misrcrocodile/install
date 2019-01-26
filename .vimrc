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

set nocompatible              " be iMproved, required
filetype off                  " required

" utf-8 support
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Display indent character like enter, tab, space, nado...
Plugin 'Yggdroot/indentLine'

" Git plugin not hosted on GitHub
Plugin 'wincent/command-t'

" Vim theme 
Plugin 'kristijanhusak/vim-hybrid-material'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" Auto complete python
Plugin 'davidhalter/jedi-vim'

" Syntax Checking/Highlighting
Plugin 'scrooloose/syntastic'

Plugin 'nvie/vim-flake8'

" File browsing
Plugin 'Scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" Super Searching
Plugin 'kien/ctrlp.vim'

" Git integration
Plugin 'tpope/vim-fugitive'

" Powerline
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" vim plugin to search using the silver search(ag)
Plugin 'ervandew/ag'

Plugin 'tmhedberg/SimpylFold'

" Vim theme
Plugin 'altercation/vim-colors-solarized'

Plugin 'pangloss/vim-javascript'

Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

let python_highlight_all=1
syntax on

filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Switch tab in NerdTree
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

set t_Co=256

" Enable folding with the spacebar
nnoremap <space> za

set expandtab
set tabstop=2
set shiftwidth=2
set fileformat=unix
set autoindent
set fileformat=unix

set list listchars=tab:→\ ,space:·\,eol:↲

let g:indentLine_char = '¦'
let g:indentLine_setConceal = 0
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" Shortcut
"" For command mode
nnoremap <S-Tab> <<
"" For insert mode
inoremap <S-Tab> <C-d>

" System clipboard
set clipboard=unnamed
set nu
set nu
set nocompatible              " be iMproved, required
filetype off                  " required

"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
" Press F4 to toggle highlighting on/off, and show current value.
noremap <F4> :set hlsearch! hlsearch?<CR>

" Theme
set background=dark
colorscheme hybrid_material
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
autocmd VimEnter * NERDTree