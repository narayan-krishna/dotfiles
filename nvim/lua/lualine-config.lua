local function get_line()
  return tostring(vim.api.nvim_buf_line_count(0)) ..  " lines"
end

local function get_theme()
  if vim.g.colors_name == 'gruvbox' or vim.g.colors_name == 'monokai-pro' then
    return 'powerline'
  else
    return 'auto'
  end
end

require('lualine').setup({
  options = {
    theme = get_theme(),
    globalstatus = true,
    -- component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    ignore_focus = {'NvimTree', 'aerial', 'Trouble'},
  },
  winbar = {
    lualine_c = {
      get_line, 'diagnostics', 'diff',
    },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {''},
    lualine_c = {'filename'},
    lualine_x = {'fileformat'},
    lualine_y = {''},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {''},
    lualine_z = {}
  },
  extensions = { 'symbols-outline' },
})
