require('telescope').load_extension('projects')
require('telescope').load_extension('buffer_lines')
require('telescope').load_extension('aerial')
require('telescope').setup {
  defaults = {
		layout_config = {
     prompt_position = "top",
    },
    vertical = {
      mirror = false,
    },
    sorting_strategy = "ascending",
  }
}

