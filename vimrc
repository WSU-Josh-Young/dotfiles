set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add your plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'neoclide/coc.nvim'    " Replace YouCompleteMe with CoC.nvim for completion
Plugin 'preservim/nerdcommenter'  " Add NERDCommenter for easy commenting
Plugin 'dense-analysis/ale'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }  " Add FZF for fuzzy file search
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'   " Add vim-surround for manipulating surroundings

call vundle#end()
filetype plugin indent on    " required

colorscheme gruvbox  " Set color scheme to Gruvbox
