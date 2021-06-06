call plug#begin('~/.config/nvim/plugged')
 " Supercollider plugin
 Plug 'davidgranstrom/scnvim', { 'do': {-> scnvim#install() } }
 
 " Custom status line
 Plug 'itchyny/lightline.vim'

 " (optional) for snippets
 Plug 'SirVer/ultisnips'
 
 " Snippets are separated from the engine. Add this if you want them:
 Plug 'honza/vim-snippets'

 " Enables easy folder tree search and management
 Plug 'preservim/nerdtree'

 " Enables smart contextual tab function
 Plug 'ervandew/supertab'
 
 " Enables self-wrapping parenthesis and brackets etc
 Plug 'tpope/vim-surround'

 " Enables easy and contextual commenting
 Plug 'tpope/vim-commentary'

 "Enables git support
 Plug 'tpope/vim-fugitive'

 " GitHub plugin for fugitive
 Plug 'tpope/vim-rhubarb'
 
 " Funny/easy startup navigation screen
 Plug 'mhinz/vim-startify'

 " Clean indent-folding. z+c & z+a
 Plug 'tmhedberg/SimpylFold'

if has ('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif

 Plug 'deoplete-plugins/deoplete-jedi'
 
 Plug 'sbdchd/neoformat'
 
 Plug 'neomake/neomake'
 
 " Enables multiple cursors, use control + N to use
 "Plug 'terryma/vim-multiple-cursors' 
 Plug 'mg979/vim-visual-multi'
 
 "Automatic quote and bracket completion
 Plug 'jiangmiao/auto-pairs'
 
 " Nvim LaTex-implementation
 Plug 'lervag/vimtex'

 " Easy send to terminal - Ipython
 Plug 'mtikekar/nvim-send-to-term'

 " Another way to implement ipy in nvim
" Plug 'bfredl/nvim-ipy'


 "Highlights yank-area
 Plug 'machakann/vim-highlightedyank'
call plug#end()


" ----- SETTINGS -----

syntax enable

set tabstop=4
set softtabstop=4
set nu " show line number
" set cursorline
set shiftwidth=4
set autoindent
set foldmethod=indent
set foldlevel=99
set splitbelow
set noshowmode

noremap U {
noremap N }
noremap H 0
noremap L $
tnoremap <ESC> <C-\><C-n>
 
let g:kite_auto_complete = 0

au BufNewFile,BufRead *.py	" sets specific settings depending on file extension of file being edited
		\ set tabstop=4
		\ set softtabstop=4
		\ set shiftwidth=4
		\ set textwidth=79
		\ set expandtab
		\ set autoindent
		\ set fileformat=unix

autocmd FileType python nnoremap <buffer> <F3> :! python3 % <CR> 

" sets color of line numbers
hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" ----- SUPERCOLLIDER -----

" post window at the bottom
let g:scnvim_postwin_orientation = 'h'

" remap send block
autocmd FileType supercollider nmap <F5> <Plug>(scnvim-send-block)

" remap send line
autocmd FileType supercollider nmap <C-e> <Plug>(scnvim-send-line)

" remap post window toggle
autocmd FileType supercollider nmap <Space>o <Plug>(scnvim-postwindow-toggle)

" hard coded path to sclang executable

" let g:scnvim_sclang_executable = '/Applications/SuperCollider/SuperCollider.app/Contents/MacOS/sclang'

" eval flash colorschemes
highlight SCNvimEval guifg=black guibg=cyan ctermfg=black ctermbg=cyan

" this autocmd keeps the custom highlight when changing colorschemes
augroup scnvim_vimrc
  autocmd!
  autocmd ColorScheme *
        \ highlight SCNvimEval guifg=black guibg=cyan ctermfg=black ctermbg=cyan
augroup END

" create a custom status line for supercollider buffers
function! s:set_sclang_statusline()
	setlocal stl=%m
	setlocal stl+=%f
	setlocal stl+=%=
	setlocal stl+=%(%l,%c%)	
	setlocal stl+=\ \|
	setlocal stl+=%24.24{scnvim#statusline#server_status()}
endfunction

augroup scnvim_stl
	autocmd!
	autocmd FileType supercollider call <SID>set_sclang_statusline()
augroup END

" lightline.vim example
let g:lightline = {
    \ 'colorscheme': 'OldHope',
	\ }
let g:lightline.component_function = {
	\ 'server_status': 'scnvim#statusline#server_status',
	\ }


function! s:set_sclang_lightline_stl()
	let g:lightline.active = {
	\ 'left':  [ [ 'mode', 'paste' ],
	\          [ 'readonly', 'filename', 'modified' ] ],
	\ 'right': [ [ 'lineinfo' ],
	\            [ 'percent' ],
	\            [ 'server_status'] ]
	\ }
	let s:p.normal.right = [ [ 'mode', 'paste' ] ]
endfunction

" ----- SUPERTAB -----

let g:SuperTabDefaultCompletionType = "<c-n>"

" ----- NERDTREE -----

" shortcut for toggle NERDTree
nmap <C-o> :NERDTreeToggle<CR>
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=60
" Enable starting with NERDTree open
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
	\ quit | endif

" ----- ULTISNIPS -----

" enable snippets support
let g:UltiSnipsSnippetDirectory = ['UltiSnips', 'scnvim-data']
let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'

" ----- DEOPLETE -----

let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


" ----- NEOMAKE -----

let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)
" ----- HIGHLIGHTEDYANK -----

let g:highlightedyank_highlight_duration = -1

" ----- SEND TO TERMINAL -----

