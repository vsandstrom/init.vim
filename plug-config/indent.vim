let g:indent_blankline_char_list = [ '│']
let g:indent_blankline_use_treesitter = v:true
let g:indent_blankline_filetype_exclude = ['help', 'lspinfo', 'help.supercollider', 'fzf', 'checkhealth']

lua << EOF

vim.cmd [[highlight IndentBlanklineChar guifg=#00ff00 gui=nocombine]]

require("indent_blankline").setup{
	space_char_blankline = " ",
	char_highlight_list = {
		"IndentBlanklineIndent1",
	},
}
EOF
