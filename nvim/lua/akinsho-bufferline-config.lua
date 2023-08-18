local bufferline = require('bufferline')

require'bufferline'.setup {
  options = {
    style_preset = {
      bufferline.style_preset.minimal, -- or bufferline.style_preset.minimal,
      bufferline.style_preset.no_italic, -- or bufferline.style_preset.minimal,
    },
    indicator = {
      style = 'underline'
    },
    show_buffer_close_icons = false,
    color_icons = false,
    hover = {
      enabled = false,
    },
    offsets = {
      {
        filetype = "NvimTree",
        text = "Explorer" ,
        separator = true,
      }
    }
  }
}
