require('lualine').setup({
  options = {
    theme = 'powerline',
    globalstatus = true,
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    ignore_focus = {'NvimTree'},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {''},
    lualine_c = {'filename', 'diagnostics'},
    lualine_x = {'diff', --[[ 'encoding', 'fileformat', ]] 'filetype'},
    lualine_y = {''},
    lualine_z = {'progress', 'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
})
