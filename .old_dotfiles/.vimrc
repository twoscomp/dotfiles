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
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'govim/govim'

" Add Snippet Support 
" Plug 'SirVer/ultisnips'

" Add fuzzy searcher
Plug 'ctrlpvim/ctrlp.vim'

" Typescript Support
Plug 'leafgarland/typescript-vim'

" Typescript React Support
Plug 'peitalin/vim-jsx-typescript'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Markdown Support
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Auto insert brackets, parens, quote pairs
Plug 'jiangmiao/auto-pairs'

" Deus Color Scheme
Plug 'ajmwagar/vim-deus'

" Dracula Color Scheme
Plug 'dracula/vim', { 'as': 'dracula'  }

call plug#end()

" Toggle File Explorer
map <C-n> :NERDTreeToggle<CR>
" Open NerdTree to current file
nnoremap <silent> <C-v> :NERDTreeFind<CR>

" Ignore case during search
set ic

" Enable UTF-8 Encoding for Devicons
set encoding=UTF-8

" Some sensible defaults
set nocompatible
set nobackup
set nowritebackup
set noswapfile

" Turn on auto-indenting
set autoindent
set smartindent
filetype indent on

" Turn on syntax highlighting
syntax on

" Suggestion: define sensible backspace behaviour. See :help backspace for
" more details
set backspace=2

" Suggestion: Turn on the sign column so you can see error marks on lines
" where there are quickfix errors. Some users who already show line number
" might prefer to instead have the signs shown in the number column; in which
" case set signcolumn=number
set signcolumn=number

" Enable plugins to enable their own settings and mappings
filetype plugin on

" Enable mouse integration
" With this setting, use 'shift' modifier to copy/paste text in and out of vim
set mouse=a

" Import configuration for govim (there's also just some good settings there)
source ~/.vimgo.vimrc

" Set colorscheme
colorscheme dracula

" Disable Error Bell in Goland
set visualbell
" Disable Error Bell in regular terminal
set noerrorbells
