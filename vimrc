let data_dir = has('vim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install Plugins
call plug#begin('~/.vim/plugged')

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

Plug 'itchyny/lightline.vim'

Plug 'preservim/nerdtree'

Plug 'sheerun/vim-polyglot'

Plug 'vim-python/python-syntax'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-fugitive'

Plug 'mattn/emmet-vim'
autocmd! BufNewFile,BufRead *.h set ft=cpp

call plug#end()

set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
filetype plugin indent on
set pastetoggle=<F2>
set backspace=indent,eol,start
set ruler

set hlsearch

inoremap <c-b> <c-\><c-o>a</<c-x><c-o><c-r>=get(v:completed_item, 'word', '>') ==# '>' ? "\<lt>c-u>" : ''<cr>
" for detecting italics escape code "
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

highlight Comment cterm=italic

colorscheme spaceduck
set laststatus=2
if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
endif
let g:lightline = {
          \ 'colorscheme': 'spaceduck',
          \ }

