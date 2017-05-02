" Initially stolen from: https://github.com/samwhitehall/.vimrc
" but significantly edited since

" ---
" Vundle (package manager)
" ---

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" List plugins:
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'

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


let mapleader=","

" ---
" Disable arrow keys (at least while learning...)
"
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" ---
" NERDTree Remappings
" ---

" Also useful is this:
" https://github.com/scrooloose/nerdtree/issues/439


" Move between split windows easily
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>n :NERDTreeToggle<cr> " Open NERDTree easily
let NERDTreeQuitOnOpen=1 " Close tree when file chosen
let NERDTreeShowHidden=1 " Show hidden files in tree
" Switch between tabs easily
nnoremap <C-N> gT
nnoremap <C-M> gt

" ---
" Make it easy to update/reload .vimrc
" ---
:nmap <Leader>s :source ~/.vimrc<cr>
:nmap <Leader>v :tabedit ~/.vimrc<cr>

" ---
" Utterly sensible defaults
" ---
set number              " show line numbers in left column
set ttyfast             " faster response to keypresses
set title               " terminal title updated depending on file in buffer
set backspace=2         " make backspace work like most other apps
syntax on           " enable syntax highlighting
set showcmd


" Searching
set smartcase           " case insensitive only if search term all lowercase
set hlsearch            " highlight search matches
nnoremap <leader><space> :noh<cr>
                        " ^ remove highlights with leader (\) + space
:nmap <leader>/ :let @/=""<cr>

" Use relative line numbers
set relativenumber

" ---
" Line wrapping
" ---
set wrap                " display long line wraps, but linebreaks added manually
set textwidth=79        " wrap after column 79 (i.e.
set colorcolumn=80


" ---
" Tabbing (assuming you want spaces, and 4 spaces at that)
" ---
set expandtab           " tab key inserts spaces (instead of tab character)
set tabstop=4           " 4 spaces for each tab
set shiftwidth=4        " do the same for indentation (pressing '>')

set autoindent


" ---
" Colour scheme
" ---

set background=dark     " comment out if you use a light terminal colour scheme
highlight LineNr ctermfg=DarkGrey
                        " ^ use less bright line numbers with dark colour scheme
colorscheme solarized

" ---
" Configure plugins
" ---
set laststatus=2 " for airline
set updatetime=250 " for gitgutter
