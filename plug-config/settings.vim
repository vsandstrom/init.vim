" ----- SETTINGS -----

" reload init.vim when edited.
autocmd! bufwritepost init source ~/.config/nvim/init.vim
" colorscheme srcery
" autocmd vimenter * ++nested colorscheme gruvbox
syntax enable

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
set so=999
set rtp+=/usr/local/opt/fzf/
set completeopt=menu,menuone,noselect

noremap U {
noremap N }
noremap H 0
noremap L $
tnoremap <ESC> <C-\><C-n>

au BufNewFile,BufRead *.py	" sets specific settings depending on file extension of file being edited
		\ set tabstop=4
		\ set softtabstop=4
		\ set shiftwidth=4
		\ set textwidth=79
		\ set expandtab
		\ set autoindent
		\ set fileformat=unix

autocmd FileType python nnoremap <buffer> <F3> :! python3 % <CR> 

autocmd FileType help.supercollider nmap <silent><buffer>q <ESC>:x<CR>
autocmd FileType qf nmap <buffer>q <silent><ESC>:x<CR>

" autocmd FileType help.supercollider call FtHelpSc()
