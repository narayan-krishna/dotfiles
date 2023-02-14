-- disable netrw at the very start of your init.lua (strongly advised)

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set leader to space
vim.g.mapleader = " "

require('plugins')
require('treesitter-config')
require('vim-config')
require('colors')
require('lsp-config')
require('keybind-config')
require('completion-config')
require('telescope-config')
require('bufferline-config')
require('tree-config')
require('utilities')
require('lualine-config')

require('nvim-autopairs').setup{}
require('project_nvim').setup{}
require('gitsigns').setup{}
require('Comment').setup{}
-- require('symbols-outline').setup{
--   auto_close = true,
-- }
