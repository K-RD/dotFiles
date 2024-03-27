" Enable syntax highlighting
syntax enable

" Show line number
set number

" show relative line number
set relativenumber

" set number width default 4
set numberwidth=4

" Adjust relative number offset
set signcolumn=auto " Always show the signcolumn, otherwise it would shift the numbers by one to the right

" Highlight the current line
set cursorline

" Highlight the cursor line number
set cursorcolumn

" Auto indentation for code formatting
set autoindent

" highlight search result
set hlsearch
" set ignorecase " to ignore case in search
set smartcase " auto switch to case sensitive search


" set tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Use Neovim's default register for yanking
set clipboard=unnamed

" Map a key combination to copy selected lines to the system clipboard
nnoremap <leader>y "+y

