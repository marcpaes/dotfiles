set relativenumber 		" Show line number relative to cursor position
set ruler 			" Show line and column position at bottom
set hidden              	" Possibility to have more than one unsaved buffers.
set incsearch                   " Incremental search, hit CR to stop.
set wildmenu			" command-line completion

set tabstop=4 shiftwidth=4 expandtab
filetype plugin indent on
syntax on

runtime macros/matchit.vim 	" Hit `%` on `if` to jump to `else`

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'  
call plug#end()
