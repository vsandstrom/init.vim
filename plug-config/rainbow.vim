" ----- RAINBOW -----
 
let g:rainbow_active = 1

if has('gui_running') || 'xterm-256color' == $TERM
  let g:rainbow_conf = extend({
  \   'guifgs' : ['#6A5ACD', '#B22222', '#C0FF3E', '#EEC900', '#9A32CD', '#EE7600', '#98fb98', '#686868'],
  \   'ctermfgs' : ['195','220','150','111', '172'],
  \}, exists('g:rainbow_conf')? g:rainbow_conf : {})
else
  let g:rainbow_conf = extend({
  \   'ctermfgs' : [ 'lightgrey', 'grey', 'darkgrey', 'black'],
  \}, exists('g:rainbow_conf')? g:rainbow_conf : {})
endif

" sets color of line numbers
hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
