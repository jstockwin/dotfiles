" Initially stolen from: https://github.com/samwhitehall/.vimrc
" but significantly edited since

" ---
" Pathogen (package manager)
" ---
call pathogen#infect()
call pathogen#helptags()

" git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
" git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
" git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace
" git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
" git clone https://github.com/airblade/vim-gitgutter ~/.vim/bundle/gitgutter

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
syntax enable           " enable syntax highlighting


" Searching
set smartcase           " case insensitive only if search term all lowercase
set hlsearch            " highlight search matches
nnoremap <leader><space> :noh<cr>
                        " ^ remove highlights with leader (\) + space

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

" ---
" Configure airline
" ---
set laststatus=2
