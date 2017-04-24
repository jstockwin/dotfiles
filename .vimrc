" Stolen from: https://github.com/samwhitehall/.vimrc
"

" ---
" Pathogen (package manager)
" ---
call pathogen#infect()
call pathogen#helptags()


" ---
" Remappings
" ---
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>n :NERDTreeToggle<cr>

" ---
" Utterly sensible defaults
" ---
set number              " show line numbers in left column
set ttyfast             " faster response to keypresses
set title               " terminal title updated depending on file in buffer

syntax enable           " enable syntax highlighting


" Searching
set smartcase           " case insensitive only if search term all lowercase
set hlsearch            " highlight search matches
nnoremap <leader><space> :noh<cr>
                        " ^ remove highlights with leader (\) + space


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
