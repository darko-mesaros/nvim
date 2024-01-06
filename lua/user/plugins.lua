local fn = vim.fn

-- Automatically install lazy
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

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	return
end

require("lazy").setup({
   "wbthomason/packer.nvim", -- Have packer manage itself
   "nvim-lua/plenary.nvim",  -- Useful lua functions used by lots of plugins
   "windwp/nvim-autopairs",  -- Autopairs, integrates with both cmp and treesitter
   "numToStr/Comment.nvim",  -- comment toggling with gcc and gbc
   "JoosepAlviste/nvim-ts-context-commentstring",
   "kyazdani42/nvim-web-devicons",
   "kyazdani42/nvim-tree.lua",  -- replacement for netrw
   "akinsho/bufferline.nvim",  -- adds buffers as tabs
	 "moll/vim-bbye",
   "nvim-lualine/lualine.nvim",  -- flexible status line
   "akinsho/toggleterm.nvim",
   "ahmedkhalf/project.nvim",
   "lewis6991/impatient.nvim",
   { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
   "goolord/alpha-nvim",
	 "folke/which-key.nvim",
   "jinh0/eyeliner.nvim",
   "eandrju/cellular-automaton.nvim", -- make it rain
   "norcalli/nvim-colorizer.lua",     -- convert hex values to colors
   "ojroques/nvim-osc52",             -- support for osc52 clipboard. REMOVE IN VERSION 0.10 when released
   {
    "nvim-telescope/telescope-cheat.nvim",
      dependencies = {
        "kkharji/sqlite.lua",
        "nvim-telescope/telescope.nvim"
    }
   },

  -- generative ai
   "David-Kunz/gen.nvim",
   {
    "jackMort/ChatGPT.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
   },
	-- Colorschemes
   "folke/tokyonight.nvim",
   "lunarvim/darkplus.nvim",
   "bluz71/vim-moonfly-colors",
   "nyoom-engineering/oxocarbon.nvim",
   "ellisonleao/gruvbox.nvim",

	-- Cmp
   "hrsh7th/nvim-cmp", -- The completion plugin
   "hrsh7th/cmp-buffer", -- buffer completions
   "hrsh7th/cmp-path", -- path completions
	 "saadparwaiz1/cmp_luasnip", -- snippet completions
	 "hrsh7th/cmp-nvim-lsp",
	 "hrsh7th/cmp-nvim-lua",

	-- Snippets
   "L3MON4D3/LuaSnip", --snippet engine
   "rafamadriz/friendly-snippets", -- a bunch of snippets to use

	-- LSP
	 "neovim/nvim-lspconfig", -- enable LSP
   "williamboman/mason.nvim", -- simple to use language server installer
   "williamboman/mason-lspconfig.nvim",
	 "jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
   "RRethy/vim-illuminate",

	-- Telescope
	 "nvim-telescope/telescope.nvim",
   "nvim-telescope/telescope-media-files.nvim",

	-- Treesitter
	"nvim-treesitter/nvim-treesitter",

	-- Git
	 "lewis6991/gitsigns.nvim",

  -- tmux
   "alexghergh/nvim-tmux-navigation",

  -- commandline and more
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
      }
  }
})
