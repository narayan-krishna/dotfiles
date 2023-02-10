-- this for some reason requires the arrow keys

local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"
local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local sorters = require "telescope.sorters"
local dropdown = require "telescope.themes".get_dropdown()

function enter(prompt_bufnr)
  local selected = action_state.get_selected_entry()
  local cmd = 'colorscheme ' .. selected[1]
  vim.fn.execute(cmd)
  actions.close(prompt_bufnr)
end

function next_color(prompt_bufnr)
  actions.move_selection_next(prompt_bufnr)
  local selected = action_state.get_selected_entry()
  local cmd = 'colorscheme ' .. selected[1]
  vim.fn.execute(cmd)
end

function prev_color(prompt_bufnr)
  actions.move_selection_previous(prompt_bufnr)
  local selected = action_state.get_selected_entry()
  local cmd = 'colorscheme ' .. selected[1]
  vim.fn.execute(cmd)
end

local opts = {

  finder = finders.new_table {"gruvbox", "molokai", "dracula"},
  sorter = sorters.get_generic_fuzzy_sorter({}),

  attach_mappings = function(prompt_bufnr, map)
    map("i", "<CR>", enter)
    map("i", "<C-J>", next_color)
    map("i", "<C-K>", prev_color)

    map("n", "<CR>", enter)
    map("n", "<j>", next_color)
    map("n", "<k>", prev_color)

    return true
  end,
}

local colors = pickers.new(dropdown, opts)
colors:find()
