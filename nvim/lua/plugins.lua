-- install lazy if neccesary
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
  { "jacoborus/tender.vim" },

  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup({
        filter = "spectrum",
        override = function()
          return {
            Function = { bold = true },
          }
        end
      })
    end
  },

  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup({
        window = {
          border = "double",
        },
        layout = {
          align = "center",
        }
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },

  -- treesitter, lsp
  'nvim-treesitter/nvim-treesitter', -- nvim-treesitter

  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  -- cmp-nvim
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',

  'hrsh7th/cmp-vsnip',
  'hrsh7th/vim-vsnip',

  'onsails/lspkind.nvim',

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },

  'jeetsukumaran/telescope-buffer-lines.nvim',

  {
    'numToStr/Comment.nvim', -- comment
    config = function()
      require('Comment').setup{}
    end,
  },

  {
    'windwp/nvim-autopairs', -- autopairs
    config = function()
      require('nvim-autopairs').setup{}
    end,
  },

  'ggandor/lightspeed.nvim', -- kachow

  {
    'ahmedkhalf/project.nvim', -- mostly for project telescoping
    config = function()
      require('project_nvim').setup{}
    end,
  },

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

  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup{}
    end
  },

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
    dependencies = 'nvim-tree/nvim-web-devicons'
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

  {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional for icon support
    config = function()
      require('fzf-lua').setup({
        winopts = {
          -- split = "belowright new",
          height = 0.85,
          width = 0.60,
          row = 0.35,
          preview = {
            vertical = 'up:60%',      -- up|down:size
            horizontal = 'right:50%',
            layout = 'vertical',
          }
        }
      })
    end
  },

  'simrat39/symbols-outline.nvim',

  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- position = "",
        -- padding = false,
      }
    end
  },

  {
    "tiagovla/scope.nvim",
    config = function()
      require('scope').setup{}
    end
  },
})
