" vim-plug plugins
call plug#begin('~/.local/share/nvim/plugged')

" File Explorer
Plug 'scrooloose/nerdtree'

" Elixir Support
Plug 'elixir-editors/vim-elixir'

" Golang Support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Typescript Support
Plug 'leafgarland/typescript-vim'

call plug#end()

" Toggle File Explorer
map <C-n> :NERDTreeToggle<CR>

" Ignore case during search
set ic
" Highlight search results
set hls
" Incremental search
set is

