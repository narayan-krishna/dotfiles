local colorscheme = 'monokai-pro'

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
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

local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "gruvbox",
  callback = function()
    vim.api.nvim_set_hl(0, "WinBarNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#3c3836", bg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentBlanklineSpaceChar", { fg = "NONE" })
  end,
  group = custom_highlight,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "monokai-pro",
  callback = function()
    vim.api.nvim_set_hl(0, "MatchParen", { fg = "#bb7144", bg = "#191919" })
  end,
  group = custom_highlight,
})

vim.cmd('colorscheme ' .. colorscheme)
