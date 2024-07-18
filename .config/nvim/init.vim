set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Installing plugins 
" call plug#begin('~/.local/share/nvim/site/autoload')
call plug#begin('~/.vim/autoload')
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Ayu-vim color scheme
Plug 'ayu-theme/ayu-vim'
call plug#end()

set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" Mapping leader key
let mapleader = " "

" remapping the leader pv instead of Vex<CR>
nnoremap <leader>pv :Vex<CR>

" breaking up the above line
" n -> it represent the mode i.e. "i, v, c, t"
" nore -> no recursive execution
" map <leader>pv :Vex<CR> -> mapping the right side key to left side

nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" so = source
" % = current file
" :so % -> source current file

nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>

