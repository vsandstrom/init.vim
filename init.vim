" ----- SETTINGS -----
" reload init.vim when edited.
autocmd! BufWritePost init.vim source ~/.config/nvim/init.vim

source $HOME/.config/nvim/plug-config/settings.vim

" ----- PLUGINS ----- 

source $HOME/.config/nvim/plug-config/plugins.vim

" ----- RAINBOW -----
 
source $HOME/.config/nvim/plug-config/rainbow.vim

" ----- SUPERCOLLIDER -----

source $HOME/.config/nvim/plug-config/scnvim.vim

" ----- NERDTREE -----

source $HOME/.config/nvim/plug-config/nerdtree.vim

" ----- VIM-STARTIFY -----

source $HOME/.config/nvim/plug-config/startify.vim

" ----- NVIM-LSPCONFIG -----

source $HOME/.config/nvim/plug-config/nvim-lspconfig.vim

" ----- NVIM-CMP -----

source $HOME/.config/nvim/plug-config/nvim-cmp.vim

" ----- LUASNIPS -----

source $HOME/.config/nvim/plug-config/luasnips.vim

" ----- TREESITTER -----

source $HOME/.config/nvim/plug-config/treesitter.vim

" ----- GITGUTTER -----

source $HOME/.config/nvim/plug-config/gitgutter.vim

" ----- INDENT BLANKLINE -----

" source $HOME/.config/nvim/plug-config/indent.vim

" ----- SNIPPETS -----

" source $HOME/.config/nvim/plug-config/snippets.vim

" ----- COLORSCHEME -----

" source $HOME/.config/nvim/plug-config/kanagawa.vim

" ----- SC-H4X -----

source $HOME/.config/nvim/plug-config/sc_h4x.vim

" ----- VIMTEX -----

source $HOME/.config/nvim/plug-config/vimtex.vim

" ----- LUALINE -----

source $HOME/.config/nvim/plug-config/lualine.lua

" ------------------------------------------------
colorscheme gruvbox
syntax enable

hi Normal guifg=#bbbbbb guibg=#333333 gui=NONE
