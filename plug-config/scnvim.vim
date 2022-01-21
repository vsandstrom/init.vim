
" ----- SUPERCOLLIDER -----

" post window at the bottom
let g:scnvim_postwin_orientation = 'h'
let g:scnvim_snippet_format = "luasnip"


" Opens documentation in vim buffer instead of external window
" let g:scnvim_scdoc=1

" let g:scnvim_sclang_options=['-u', 9999]

" let g:scnvim_echo_args_float=1

autocmd BufNewFile, BufRead *.scd, *.sc set ft=supercollider

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

