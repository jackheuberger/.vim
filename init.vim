call plug#begin()
" visuals
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'bryanmylee/vim-colorscheme-icons'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" functionality
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'

Plug 'alvan/vim-closetag'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'

call plug#end()
set number
noremap <F1> :set rnu! rnu?<CR>
colorscheme onehalfdark
set cursorline
set termguicolors
set t_Co=256
syntax enable

" tab and indent settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
filetype plugin indent on

set backspace=indent,eol,start
set ruler

" F4 toggles search highlighting
noremap <F4> :set hlsearch! hlsearch?<CR>

set incsearch hlsearch ignorecase smartcase

set laststatus=2 showcmd showmode

set list lcs=trail:·,tab:»·
set fillchars+=vert:\
set wrap breakindent
set encoding=utf-8
set title

" Key Remappings
nmap <leader>g :Goyo<CR>

" Plugin settings
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

nnoremap <C-t> :NERDTreeToggle<CR>

let g:airline_theme='onehalfdark'
