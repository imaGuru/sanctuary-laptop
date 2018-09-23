set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Basic config
set nocompatible              " be iMproved, required
set updatetime=100
set colorcolumn=80
set number
set hlsearch
syntax on
" Tab options
set shiftwidth=4 tabstop=4 expandtab autoindent

" Mappings
" Toggle relative line number
nmap <C-L><C-L> :set invrelativenumber<CR>
nmap <F8> :TagbarToggle<CR>

"Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'shougo/denite.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'majutsushi/tagbar'

call plug#end()

"Airline conf
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"Denite
nnoremap <C-p> :Denite file_rec<cr>
