local fn = vim.fn

-- automatically install packer.nvim
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  }
  print "Installing packer... Close and re-open vim"
  vim.cmd [[packadd packer.nvim]]
end

-- vim Autocommand that reloads neovim everytime the plugin.lua file is modified
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- user a protected call so we dont error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- here be plugin installs
return packer.startup(function(use)
  -- my plugins here
  -- package management
  use "wbthomason/packer.nvim"          -- packer manages itself

  -- colors and schemes
  use "ayu-theme/ayu-vim"               -- supports 3 modes
  use 'folke/tokyonight.nvim'           -- has night and day
  use 'ParamagicDev/vim-medic_chalk'    -- vivid dark

  -- better writing
  use "rstacruz/vim-closer"             -- closes brackers for you
  use "unblevable/quick-scope"          -- better horizontal mvmt

  -- cmp plugins
  use "hrsh7th/nvim-cmp"                -- the completion plugin
  use "hrsh7th/cmp-buffer"              -- buffer completion
  use "hrsh7th/cmp-path"                -- path completion
  use "hrsh7th/cmp-cmdline"             -- commandline completion
  use "hrsh7th/cmp-nvim-lua"            -- nvim config completion
  use "saadparwaiz1/cmp_luasnip"        -- snipped completion
  use "hrsh7th/cmp-nvim-lsp"            -- support for nvim lsp

  -- snippet support
  use "L3MON4D3/LuaSnip"                -- luasnip snippet engine
  use "rafamadriz/friendly-snippets"    -- bunch of useful snippets (community currated)

  -- LSP
  use "neovim/nvim-lspconfig"           -- enable LSP for neovim
  use "williamboman/nvim-lsp-installer" -- simple lsp installer for nvim

  -- markdown and documents
  use {
    "iamcco/markdown-preview.nvim",   -- previews md files
    run = 'cd app & yarn install',
    cmd = 'MarkdownPreview'
  }
  -- useful utilities, sometimes needed by other plugins
  use "nvim-lua/popup.nvim"             -- implementation of the vim popip api in nvim
  use "nvim-lua/plenary.nvim"           -- useful lua functions used by lots of plugins

  -- Telescope
  use "nvim-telescope/telescope.nvim"   -- telescope
  use "nvim-telescope/telescope-media-files.nvim"

  -- automatic stuff - make sure this is at the end
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
