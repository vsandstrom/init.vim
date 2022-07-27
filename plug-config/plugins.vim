" ----- PLUGINS ----- 
"

call plug#begin('~/.config/nvim/plugged')

"Cool theme
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'tjdevries/colorbuddy.nvim'
Plug 'bbenzikry/snazzybuddy.nvim'
Plug 'ajmwagar/vim-deus'
Plug 'rebelot/kanagawa.nvim'

" LSP Configuration
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" Supercollider plugin
Plug 'davidgranstrom/scnvim', { 'do': {-> scnvim#install() } }

" SC ScratchPad
Plug 'MunifTanjim/nui.nvim' " gui plugin
Plug 'madskjeldgaard/sc-scratchpad.nvim' " scratchpad for supercollider

" Fuzzy Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Custom status line
" Plug 'itchyny/lightline.vim'

" Lua status line
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" Show current git branch
Plug 'itchyny/vim-gitbranch'

" GitGutter
Plug 'airblade/vim-gitgutter'

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

"Enables git support
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

" lua snippets
Plug 'norcalli/snippets.nvim'
Plug 'madskjeldgaard/lua-supercollider-snippets'

" Plug 'madskjeldgaard/supercollider-h4x-nvim'

Plug 'glepnir/lspsaga.nvim'

" faust syntax and filetype
" Plug 'gmoe/vim-faust'

" Other faust things
" Plug 'madskjeldgaard/faust-nvim'

Plug 'jbyuki/instant.nvim'

Plug 'lervag/vimtex'

call plug#end()
