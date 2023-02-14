local navic = require("nvim-navic")

local function get_line()
  return tostring(vim.api.nvim_buf_line_count(0)) ..  " lines"
end

require('lualine').setup({
  options = {
    theme = 'powerline',
    globalstatus = true,
    -- component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    ignore_focus = {'NvimTree', 'aerial'},
  },
  winbar = {
    lualine_c = { get_line, 'diagnostics', 'diff' },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {''},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {''},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  extensions = { 'symbols-outline' },
})
