set nocompatible
filetype off

" Plugins
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'vim-scripts/tagbar'
Bundle 'altercation/vim-colors-solarized'


" TAB expansion
set expandtab
set shiftwidth=2
set softtabstop=2


" Syntax Hilighting
syntax on
set background=dark
colorscheme solarized

" Auto-indent
filetype indent on

" NERDCommenter
filetype plugin on

" Other settings
set encoding=utf-8
set noswapfile
let mapleader=","

" Quick ESC
imap jj <ESC>


" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <S-Left> gT
nnoremap <S-Right> gt
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror

" Tagbar
nnoremap <leader>t :TagbarToggle<CR>

" .vimrc autoreload
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
