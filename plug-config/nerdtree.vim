" ----- NERDTREE -----

" shortcut for toggle NERDTree
nmap <C-o> :NERDTreeToggle<CR>
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=70
" Enable starting with NERDTree open
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
	\ quit | endif
