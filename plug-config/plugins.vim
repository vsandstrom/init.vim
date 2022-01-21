" ----- PLUGINS ----- 

call plug#begin('~/.config/nvim/plugged')

"Cool theme
" Plug 'dracula/vim'

Plug 'morhetz/gruvbox'

" Plug 'tjdevries/colorbuddy.nvim'
" Plug 'bbenzikry/snazzybuddy.nvim'

" LSP Configuration
Plug 'neovim/nvim-lspconfig'

" Supercollider plugin
Plug 'davidgranstrom/scnvim', { 'do': {-> scnvim#install() } }

" SC ScratchPad
Plug 'MunifTanjim/nui.nvim' " gui plugin
Plug 'madskjeldgaard/sc-scratchpad.nvim' " scratchpad for supercollider

" Custom status line
Plug 'itchyny/lightline.vim'

" Show current git branch
Plug 'itchyny/vim-gitbranch'

" Rust support
Plug 'rust-lang/rust.vim'

" Enables easy folder tree search and management
Plug 'preservim/nerdtree'

" Enables self-wrapping parenthesis and brackets etc
Plug 'tpope/vim-surround'

" Colorize matching brackets
Plug 'luochen1990/rainbow'

" Enables easy and contextual commenting
Plug 'tpope/vim-commentary'

"Enables git/GitHub support
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Funny/easy startup navigation screen
Plug 'mhinz/vim-startify'

" Clean indent-folding. z+c & z+a
Plug 'tmhedberg/SimpylFold'

" Pandoc vim integration + syntax
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'


" Enables multiple cursors, use control + N to use
Plug 'mg979/vim-visual-multi'

"Automatic quote and bracket completion
Plug 'jiangmiao/auto-pairs'

"Highlights yank-area
Plug 'machakann/vim-highlightedyank'

" nvim-treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

 " LSP + Completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-tags'

Plug 'digitaltoad/vim-pug'

" For vsnip users.
" Plug 'hrsh7th/cmp-vsnip'
" Plug 'hrsh7th/vim-vsnip'

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" For ultisnips users.
" Plug 'SirVer/ultisnips'
" Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" For snippy users.
" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'

Plug 'glepnir/lspsaga.nvim'
call plug#end()
