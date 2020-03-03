" Run 'go-metalinter' on save
let g:go_metalinter_autosave = 1 " Use goimports for formating
let g:go_fmt_command = "goimports"

" Save on Build
set autowrite

" Make using quickfix easier
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" Add shortcuts for building and runing go
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage-toggle)

" Add shortcut for displaying info
autocmd FileType go nmap <leader>i <Plug>(go-info)

" Auto show info after a short delay
let g:go_auto_type_info = 1
set updatetime=100

" Highlight identifiers with same ID as cursor
let g:go_auto_sameids = 1

" Use only quickfix (and not location lists)
" let g:go_list_type = "quickfix"

" Enable Go highlighting (disable this if performance suffers)
" let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_function_calls = 1
" let g:go_highlight_generate_tags = 1
