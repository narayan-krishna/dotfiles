local colorscheme = 'gruvbox'

vim.g.gruvbox_material_background = 'hard';
vim.g.gruvbox_material_foreground = 'mix';
vim.g.mellow_bold_functions = true;

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
    SignColumn        = {bg = ""},
    GruvboxRedSign    = {bg = ""},
    GruvboxGreenSign  = {bg = ""},
    GruvboxYellowSign = {bg = ""},
    GruvboxBlueSign   = {bg = ""},
    GruvboxPurpleSign = {bg = ""},
    GruvboxAquaSign   = {bg = ""},
    GruvboxOrangeSign = {bg = ""},
    LineNr = { bg = "" },
  },
  dim_inactive = true,
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
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "WinBarNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#3c3836", bg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentBlanklineSpaceChar", { fg = "NONE" })
    vim.api.nvim_set_hl(0, "String", { fg = "#83A598" })
    vim.api.nvim_set_hl(0, "Identifier", { fg = "#ebdbb2" })
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#1d2021" })
    vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "#1a1c1d", bg = "#1a1c1d" })
    vim.api.nvim_set_hl(0, "BufferLineOffsetSeparator", { fg = "#1a1c1d", bg = "#1a1c1d" })
    vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "NONE", })
    vim.api.nvim_set_hl(0, "BufferLineSeparator", { fg = "#1a1c1d", bg = "NONE" })
    vim.api.nvim_set_hl(0, "BufferLineTab", { fg = "red", bg = "red" })
    vim.api.nvim_set_hl(0, "BufferLineTabSelected", { fg = "red", bg = "red" })
    vim.api.nvim_set_hl(0, "BufferLineBackground", { bg = "NONE" })
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
    vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "NONE", })
    vim.api.nvim_set_hl(0, "WinBar", { bg = "NONE" })
  end,
  group = custom_highlight,
})

vim.cmd('colorscheme ' .. colorscheme)
