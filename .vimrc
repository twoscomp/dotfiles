" vim-plug plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Sensible Defaults
Plug 'tpope/vim-sensible'

" File Explorer
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Elixir Support
Plug 'elixir-editors/vim-elixir'

" Golang Support
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'govim/govim'

" Typescript Support
Plug 'leafgarland/typescript-vim'

" Typescript React Support
Plug 'peitalin/vim-jsx-typescript'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Markdown Support
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

call plug#end()

" Toggle File Explorer
map <C-n> :NERDTreeToggle<CR>
" Open NerdTree to current file
nnoremap <silent> <C-v> :NERDTreeFind<CR>

" Ignore case during search
set ic

" Import configuration for govim
source ~/.govim.vimrc

