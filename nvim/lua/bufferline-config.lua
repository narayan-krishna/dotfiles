-- Set barbar's options
require'bufferline'.setup {
  -- Enable/disable animations
  animation = false,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enable/disable close button
  closable = false,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,

  -- Enables / disables diagnostic symbols
  diagnostics = {
    -- you can use a list
    {enabled = false, icon = 'ﬀ'}, -- ERROR
    {enabled = false}, -- WARN
    {enabled = false}, -- INFO
    {enabled = false},  -- HINT

    -- OR `vim.diagnostic.severity`
    [vim.diagnostic.severity.ERROR] = {enabled = false, icon = 'ﬀ'},
    [vim.diagnostic.severity.WARN] = {enabled = false},
    [vim.diagnostic.severity.INFO] = {enabled = false},
    [vim.diagnostic.severity.HINT] = {enabled = false},
  },
}
