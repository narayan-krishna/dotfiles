local colorscheme = 'gruvbox'

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
  palette_overrides = {},
  overrides = {
    -- SignColumn        = {bg = ""},
    -- GruvboxRedSign    = {bg = ""},
    -- GruvboxGreenSign  = {bg = ""},
    -- GruvboxYellowSign = {bg = ""},
    -- GruvboxBlueSign   = {bg = ""},
    -- GruvboxPurpleSign = {bg = ""},
    -- GruvboxAquaSign   = {bg = ""},
    -- GruvboxOrangeSign = {bg = ""},
    -- TabLineFill = {bg = "#1a1d1e"},
    -- StatusLine = {bg = "#928374", fg = "#1d2021"},
    LineNr = {bg = "#3c3836"},
    Normal = {bg = "NONE"},
  },
  dim_inactive = false,
  transparent_mode = false,
})

vim.cmd('colorscheme ' .. colorscheme)
vim.fn.execute('hi CursorLine guibg=bg')
-- vim.fn.execute('hi EndOfBuffer guifg=bg')
