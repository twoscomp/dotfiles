" vim-plug plugins
call plug#begin('~/.local/share/nvim/plugged')

" File Explorer
Plug 'scrooloose/nerdtree'

" Elixir Support
Plug 'elixir-editors/vim-elixir'

call plug#end()

" Toggle File Explorer
map <C-n> :NERDTreeToggle<CR>

" Ignore case during search
set ic
" Highlight search results
set hls
" Incremental search
set is

