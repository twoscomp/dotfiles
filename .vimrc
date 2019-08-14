" vim-plug plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

" File Explorer
Plug 'scrooloose/nerdtree'

" Elixir Support
Plug 'elixir-editors/vim-elixir'

" Golang Support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" Toggle File Explorer
map <C-n> :NERDTreeToggle<CR>

" Ignore case during search
set ic
" Highlight search results
set hls
" Incremental search
set is

