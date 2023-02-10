-- vim opts

local opts = {
  cmdheight = 1,
  tabstop = 2,
  shiftwidth = 2,
  softtabstop = 2,
  expandtab = true, -- tab to spaces
  smartindent = true,
  scrolloff = 4,
  sidescrolloff = 8,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  undofile = true,
  relativenumber = true,
  number = true,
  termguicolors = true,
  list = true,
  hlsearch = true,
  cursorline = false,
  showmode =  false,
  ruler = true,
  mouse = a,
  background = "dark",
  -- colorcolumn = "79",
  -- showcmd = false
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

vim.opt.listchars:append("trail:⋅")
vim.wo.wrap = false

vim.fn.execute('au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})')
