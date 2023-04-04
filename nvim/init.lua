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
-- require('el').setup()
require('lualine-config')

-- vim.api.nvim_create_autocmd({ "VimEnter" }, {
--   callback = function()
--     require("nvim-tree.api").tree.open()
--   end,
-- })
