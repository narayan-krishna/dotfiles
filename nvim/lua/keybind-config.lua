local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- normal mode keymaps
local function nkeymap(key,map)
  keymap('n', key, map, opts)
end

local function ikeymap(key,map)
  keymap('i', key, map, opts)
end

-- lsp
nkeymap('gd', ':lua vim.lsp.buf.definition()<cr>')
nkeymap('gD', ':lua vim.lsp.buf.declaration()<cr>')
nkeymap('gi', ':lua vim.lsp.buf.implementation()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
nkeymap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
nkeymap('gr', ':lua vim.lsp.buf.references()<cr>')
nkeymap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
nkeymap('gs', ':lua vim.lsp.buf.rename()<cr>')
nkeymap('K', ':lua vim.lsp.buf.hover()<cr>')
-- nkeymap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
nkeymap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
nkeymap('<leader>rn', ':lua vim.lsp.buf.rename()<cr>')
nkeymap('<leader>e', ':lua vim.diagnostic.open_float()<cr>')

nkeymap('[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
nkeymap(']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

-- telescope
-- nkeymap('<leader>ff', '<cmd>Telescope find_files<cr>')
-- nkeymap('<leader>fg', '<cmd>Telescope live_grep<cr>')
-- nkeymap('<leader>fb', '<cmd>Telescope buffers<cr>')
nkeymap('<leader>fp', '<cmd>Telescope projects<cr>')
-- nkeymap('<leader>fc', '<cmd>Telescope colorscheme<cr>')
-- nkeymap('<leader>fl', '<cmd>Telescope buffer_lines<cr>')
-- nkeymap('<leader>fa', '<cmd>Telescope aerial<cr>')

-- fzf
nkeymap('<leader>fh', '<cmd>FzfLua help_tags<cr>')
nkeymap('<leader>fb', '<cmd>FzfLua buffers<cr>')
nkeymap('<leader>fg', '<cmd>FzfLua live_grep<cr>')
nkeymap('<leader>ff', '<cmd>FzfLua files<cr>')
nkeymap('<leader>fr', '<cmd>FzfLua oldfiles<cr>')
nkeymap('<leader>fl', '<cmd>FzfLua lgrep_curbuf<cr>')
nkeymap('<leader>fc', '<cmd>FzfLua colorschemes<cr>')
nkeymap('<leader>fd', '<cmd>FzfLua diagnostics_document<cr>')
nkeymap('<leader>fw', '<cmd>FzfLua diagnostics_workspace<cr>')
nkeymap('<leader>fe', '<cmd>FzfLua command_history<cr>')

nkeymap('<leader>ar', '<cmd>AerialToggle<cr>')
nkeymap('<leader>ao', '<cmd>AerialOpen<cr>')
nkeymap('<leader>ac', '<cmd>AerialClose<cr>')

nkeymap('<leader>dr', '<cmd>TroubleToggle<cr>')
nkeymap('<leader>do', '<cmd>Trouble<cr>')
nkeymap('<leader>dc', '<cmd>TroubleClose<cr>')

-- nkeymap('<leader>tr', '<cmd>NvimTreeToggle<cr>')
nkeymap('<leader>to', '<cmd>NvimTreeOpen<cr>')
nkeymap('<leader>tc', '<cmd>NvimTreeClose<cr>')

nkeymap('<c-p>', '<cmd>BufferPick<cr>')
nkeymap('<M-p>', '<cmd>BufferPrevious<cr>')
nkeymap('<M-n>', '<cmd>BufferNext<cr>')
nkeymap('<M-c>', '<cmd>BufferClose<cr>')
--
-- nkeymap('<M-p>', '<cmd>bprevious<cr>')
-- nkeymap('<M-n>', '<cmd>bnext<cr>')
-- nkeymap('<M-c>', '<cmd><cr>')
nkeymap('tt', '<C-^>') -- just to switch back and forth between files
nkeymap('<leader>gn', '<cmd>tabnext<cr>')
nkeymap('<leader>gp', '<cmd>tabprevious<cr>')

-- file jumps (non-flexible file jumps)
nkeymap('<leader>kb', '<cmd>e ~/.config/nvim/lua/keybind-config.lua<cr>') -- jump to config

-- turn off highlights after search
nkeymap('<leader>n', '<cmd>noh<cr>')

-- run the current lua file
nkeymap('<leader>ll', '<cmd>luafile %<cr>')

-- format with cargo
nkeymap('<leader>rf', '<cmd>!cargo fmt<cr>')
