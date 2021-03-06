" ----- SETTINGS -----

set tabstop=4
set t_Co=256
set softtabstop=4
set textwidth=110
set number " show line number
set signcolumn
" set cursorline
set shiftwidth=4
set autoindent
set foldmethod=indent
set foldlevel=99
set splitbelow
set splitright
set noshowmode
set scrolloff=999
set rtp+=/usr/local/opt/fzf/
set completeopt=menu,menuone,noselect
noremap U {
noremap N }
noremap H 0
noremap L $
tnoremap <ESC> <C-\><C-n>

" Username in collaborative sessions
let g:instant_username = "vikboi"

au BufNewFile,BufRead *.py	" sets specific settings depending on file extension of file being edited
		\ set tabstop=4
		\ set softtabstop=4
		\ set shiftwidth=4
		\ set textwidth=79
		\ set expandtab
		\ set autoindent
		\ set fileformat=unix

" ----- HIGHLIGHTEDYANK -----

let g:highlightedyank_highlight_duration = -1

" Custom Commands:


" SuperCollider Documentation easy closing key bindings
autocmd FileType help.supercollider nmap <silent><buffer>q <ESC>:x<CR>
autocmd FileType qf nmap <silent><buffer>q <ESC>:x<CR>

" New tab shortcut
nmap <C-t> :tabnew<ESC>


function! ToggleScrollFollow() 
	if &scrolloff==999
		let &scrolloff=0
	elseif &scrolloff==0
		let &scrolloff=999
	else 
		let &scrolloff=999
	endif
endfunction

" ctrl + f as in 'follow'
nmap <silent><C-f> :call ToggleScrollFollow()<cr>

" Execute current python buffer, works if script has no argv inputs
autocmd FileType python map <buffer> <F3> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F3> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
