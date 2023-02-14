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

require('lazy').setup({
  { "ellisonleao/gruvbox.nvim" },

  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',

  -- treesitter, lsp
  'nvim-treesitter/nvim-treesitter', -- nvim-treesitter

  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  -- cmp-nvim
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  'numToStr/Comment.nvim', -- comment
  'windwp/nvim-autopairs', -- autopairs
  'ahmedkhalf/project.nvim', -- mostly for project telescoping
  'jeetsukumaran/telescope-buffer-lines.nvim',
  'ggandor/lightspeed.nvim', -- kachow

  {
    "goolord/alpha-nvim",
    config = function()
      require("dashboard-custom")
    end,
  },

  { "lukas-reineke/indent-blankline.nvim" },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },

  'lewis6991/gitsigns.nvim',
  'nvim-tree/nvim-web-devicons',

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  },

  {
    'romgrk/barbar.nvim',
    wants = 'nvim-tree/nvim-web-devicons'
  },

  {
    'stevearc/aerial.nvim',
    config = function()
      require('aerial').setup({
        layout = {
          max_width = { 40, 0.4 },
          min_width = { 10, 0.2 },
          -- width = 40,
          default_direction = "prefer_right",
        },
        close_on_select = false,
        float = {
          relative = "win",
        },
      })
    end
  },

  'simrat39/symbols-outline.nvim',

  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  },

  {
    "SmiteshP/nvim-navic",
    dependencies = "neovim/nvim-lspconfig"
  },

})
