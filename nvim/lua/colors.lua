local colorscheme = 'vscode'

vim.g.gruvbox_material_background = 'hard';
vim.g.gruvbox_material_foreground = 'mix';

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {
  },
  overrides = {
    -- SignColumn        = {bg = ""},
    -- GruvboxRedSign    = {bg = ""},
    -- GruvboxGreenSign  = {bg = ""},
    -- GruvboxYellowSign = {bg = ""},
    -- GruvboxBlueSign   = {bg = ""},
    -- GruvboxPurpleSign = {bg = ""},
    -- GruvboxAquaSign   = {bg = ""},
    -- GruvboxOrangeSign = {bg = ""},
    NvimTreeNormal = { bg = "#1a1d1e" },
    -- NvimTreeWinSeparator = { fg = "#1a1d1e", bg = "#1a1d1e" },
    -- StatusLine = {bg = "#928374", fg = "#1d2021"},
    LineNr = {bg = "#3c3836"},
    Normal = {bg = "NONE"},
    -- TabLineFill = {bg = "#1d2021"},
    TabLineSel = {bg = "#1d2021"},
  },
  dim_inactive = false,
  transparent_mode = false,
})

-- vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "Delimiter" })

local global_custom = vim.api.nvim_create_augroup("GlobalCustom", {})
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "SpecialChar" })
  end,
  group = global_custom,
})

local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "gruvbox",
  callback = function()
    vim.api.nvim_set_hl(0, "WinBarNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#3c3836", bg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentBlanklineSpaceChar", { fg = "NONE" })
    vim.api.nvim_set_hl(0, "String", { fg = "#83A598" })
    vim.api.nvim_set_hl(0, "Identifier", { fg = "#ebdbb2" })
  end,
  group = custom_highlight,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "monokai-pro",
  callback = function()
    vim.api.nvim_set_hl(0, "MatchParen", { fg = "#bb7144", bg = "#191919" })
    vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#191919", bg = "#191919" })
    -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
    -- vim.api.nvim_set_hl(0, "TroubleNormal", { fg = "#f7f1ff", bg = "#191919" })
  end,
  group = custom_highlight,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "vscode",
  callback = function()
    vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#252526", bg = "#252526" })
    vim.api.nvim_set_hl(0, "BufferLineOffsetSeparator", { fg = "#252526", bg = "#252526" })
    -- vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", { fg = "#252526", bg = "#252526" })
    -- vim.api.nvim_set_hl(0, "NvimTreeStatusLine", { fg = "#252526", bg = "#252526" })
    vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "#1e1e1e", })
    -- vim.api.nvim_set_hl(0, "BufTabLineCurrent", { bg = "#1c1c1c", fg = "#1c1c1c"})
    vim.api.nvim_set_hl(0, "WinBar", { bg = "NONE" })
  end,
  group = custom_highlight,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "PaperColor",
  callback = function()
    vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#1c1c1c", bg = "#1c1c1c" })
    -- vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", { fg = "#252526", bg = "#252526" })
    -- vim.api.nvim_set_hl(0, "NvimTreeStatusLine", { fg = "#252526", bg = "#252526" })
    -- vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = "#1a1a1a", })
    vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = "#1c1c1c", })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
    -- vim.api.nvim_set_hl(0, "WinBar", { bg = "NONE" })
  end,
  group = custom_highlight,
})

vim.cmd('colorscheme ' .. colorscheme)
