-- Set barbar's options
require'bufferline'.setup {
  -- Enable/disable animations
  animation = false,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enable/disable close button
  -- closable = false,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,

  -- -- Enables / disables diagnostic symbols
  -- diagnostics = {
  --   -- you can use a list
  --   {enabled = false, icon = 'ﬀ'}, -- ERROR
  --   {enabled = false}, -- WARN
  --   {enabled = false}, -- INFO
  --   {enabled = false},  -- HINT
  --
  --   -- OR `vim.diagnostic.severity`
  --   [vim.diagnostic.severity.ERROR] = {enabled = false, icon = 'ﬀ'},
  --   [vim.diagnostic.severity.WARN] = {enabled = false},
  --   [vim.diagnostic.severity.INFO] = {enabled = false},
  --   [vim.diagnostic.severity.HINT] = {enabled = false},
  -- },
  icons = {
    -- Configure the base icons on the bufferline.
    buffer_index = false,
    buffer_number = false,
    button = '',
    -- Enables / disables diagnostic symbols
    diagnostics = {
      [vim.diagnostic.severity.ERROR] = {enabled = false, icon = 'ﬀ '},
      [vim.diagnostic.severity.WARN] = {enabled = false},
      [vim.diagnostic.severity.INFO] = {enabled = false},
      [vim.diagnostic.severity.HINT] = {enabled = true},
    },
    filetype = {
      -- Sets the icon's highlight group.
      -- If false, will use nvim-web-devicons colors
      custom_colors = false,

      -- Requires `nvim-web-devicons` if `true`
      enabled = true,
    },
    separator = {left = '▎', right = ''},

    -- Configure the icons on the bufferline when modified or pinned.
    -- Supports all the base icon options.
    modified = {button = ''},
    -- pinned = {button = '車'},
    --
    -- -- Configure the icons on the bufferline based on the visibility of a buffer.
    -- -- Supports all the base icon options, plus `modified` and `pinned`.
    -- alternate = {filetype = {enabled = false}},
    -- current = {buffer_index = true},
    -- inactive = {button = '×'},
    -- visible = {modified = {buffer_number = false}},
  },
}
