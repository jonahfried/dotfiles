local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'ellisonleao/gruvbox.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'tpope/vim-commentary',

  'nvim-treesitter/nvim-treesitter',
  "glepnir/lspsaga.nvim",
  {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  'christoomey/vim-tmux-navigator',


  -- Code completion
  "williamboman/mason.nvim",
  "neovim/nvim-lspconfig",
  "williamboman/mason-lspconfig.nvim",
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',

  -- Formatting:
  {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  }
}


local opts = {}

require("lazy").setup(plugins, opts)
