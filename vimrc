set number
set relativenumber

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

set clipboard=unnamedplus

set cursorline
:highlight Cursorline cterm=bold ctermbg=black
set hlsearch
set ignorecase
set smartcase
set showmatch

set cursorcolumn
set colorcolumn=120
set termguicolors

set incsearch
set autoread
set autowrite
set showcmd

set wrap
set linebreak

set mouse=a
set encoding=utf-8
filetype plugin indent on

set wildmode=longest,list,full
set splitbelow splitright

syntax on
autocmd BufWritePre *.py: :%s/\s\+$//e

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle') "Начать искать плагины в этой директории
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'
Plug 'majutsushi/tagbar'
Plug 'anyakichi/vim-surround'
Plug 'joom/vim-commentary'
Plug 'iden3/vim-circom-syntax'
Plug 'rust-lang/rust.vim'
Plug 'theoremoon/cryptohack-color.vim'
Plug 'vim-airline/vim-airline-themes'
call plug#end() "Перестать это делать

colorscheme cryptohack
let g:airline_theme="minimalist"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:rustfmt_autosave = 1
let g:syntastic_rust_checkers = ['cargo']

let g:bufExplorerSortBy = 'number'
let g:NERDTreeWinSize = 50
let g:tagbar_width = 50
let g:rtagsRcCmd = 'rtags-rc'
let g:rtagsUseLocationList = 0

set background=dark

nmap <Leader>t :TagbarToggle<CR>
nmap <Leader>p :NERDTreeToggle<CR>

autocmd InsertEnter * norm zz
autocmd BufWritePre * %s/\s\+$//e

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>

nnoremap <leader>w :w
nnoremap <leader>q :wq
