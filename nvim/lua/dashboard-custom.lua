local art2 = {
    [[]],
    [[⡆⣐⢕⢕⢕⢕⢕⢕⢕⢕⠅⢗⢕⢕⢕⢕⢕⢕⢕⠕⠕⢕⢕⢕⢕⢕⢕⢕⢕⢕]],
    [[⢐⢕⢕⢕⢕⢕⣕⢕⢕⠕⠁⢕⢕⢕⢕⢕⢕⢕⢕⠅⡄⢕⢕⢕⢕⢕⢕⢕⢕⢕]],
    [[⢕⢕⢕⢕⢕⠅⢗⢕⠕⣠⠄⣗⢕⢕⠕⢕⢕⢕⠕⢠⣿⠐⢕⢕⢕⠑⢕⢕⠵⢕]],
    [[⢕⢕⢕⢕⠁⢜⠕⢁⣴⣿⡇⢓⢕⢵⢐⢕⢕⠕⢁⣾⢿⣧⠑⢕⢕⠄⢑⢕⠅⢕]],
    [[⢕⢕⠵⢁⠔⢁⣤⣤⣶⣶⣶⡐⣕⢽⠐⢕⠕⣡⣾⣶⣶⣶⣤⡁⢓⢕⠄⢑⢅⢑]],
    [[⠍⣧⠄⣶⣾⣿⣿⣿⣿⣿⣿⣷⣔⢕⢄⢡⣾⣿⣿⣿⣿⣿⣿⣿⣦⡑⢕⢤⠱⢐]],
    [[⢠⢕⠅⣾⣿⠋⢿⣿⣿⣿⠉⣿⣿⣷⣦⣶⣽⣿⣿⠈⣿⣿⣿⣿⠏⢹⣷⣷⡅⢐]],
    [[⣔⢕⢥⢻⣿⡀⠈⠛⠛⠁⢠⣿⣿⣿⣿⣿⣿⣿⣿⡀⠈⠛⠛⠁⠄⣼⣿⣿⡇⢔]],
    [[⢕⢕⢽⢸⢟⢟⢖⢖⢤⣶⡟⢻⣿⡿⠻⣿⣿⡟⢀⣿⣦⢤⢤⢔⢞⢿⢿⣿⠁⢕]],
    [[⢕⢕⠅⣐⢕⢕⢕⢕⢕⣿⣿⡄⠛⢀⣦⠈⠛⢁⣼⣿⢗⢕⢕⢕⢕⢕⢕⡏⣘⢕]],
    [[⢕⢕⠅⢓⣕⣕⣕⣕⣵⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣷⣕⢕⢕⢕⢕⡵⢀⢕⢕]],
    [[⢑⢕⠃⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⢕⢕⢕]],
    [[⣆⢕⠄⢱⣄⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢁⢕⢕⠕⢁]],
    [[⣿⣦⡀⣿⣿⣷⣶⣬⣍⣛⣛⣛⡛⠿⠿⠿⠛⠛⢛⣛⣉⣭⣤⣂⢜⠕⢑⣡⣴⣿]],
  }

local art3 = {
  " ",
  "    ███    ██ ██    ██ ██ ███    ███",
  "    ████   ██ ██    ██ ██ ████  ████",
  "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
  "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
  "    ██   ████   ████   ██ ██      ██",
}


local present, alpha = pcall(require, "alpha")
if not present then
  return
end

local header = {
  type = "text",
  val = art3,
  opts = {
    position = "center",
    -- hl = "Comment",
  },
}

local function getGreeting(name)
  local tableTime = os.date("*t")
  local hour = tableTime.hour
  local greeting = ""
  if (hour >= 23 or hour < 7) then
    greeting = "  It's bedtime"
  elseif (hour >= 0 and hour < 12) then
    greeting = "  Good morning"
  elseif (hour >= 12 and hour < 18) then
    greeting = "  Good afternoon"
  elseif (hour >= 18 and hour < 21) then
    greeting = "  Good evening"
  elseif (hour >= 21) then
    greeting = "望 Good night"
  end
  return greeting .. ", " .. name
end

local userName = "Krishna"
local greeting = getGreeting(userName)

local greetHeading = {
  type = "text",
  val = greeting,
  opts = {
    position = "center",
    hl = "Conditional"
  },
}

local quote = [["Comfort is the killer of man."]]
local quoteAuthor = "Hamza Ahmed"
local fullQuote = quote .. "\n \n                  - " .. quoteAuthor

local fortune = {
  type = "text",
  val = fullQuote,
  opts = {
    position = "center",
    hl = "Comment",
  },
}

local function button(sc, txt, keybind)
  local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

  local opts = {
    position = "center",
    text = txt,
    shortcut = sc,
    cursor = 0,
    width = 19,
    align_shortcut = "right",
    hl_shortcut = "Number",
    hl = "String",
  }
  if keybind then
    opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
  end

  return {
    type = "button",
    val = txt,
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
      vim.api.nvim_feedkeys(key, "normal", false)
    end,
    opts = opts,
  }
end

local buttons = {
  type = "group",
  val = {
    button("e", "   New file", ":ene <BAR> startinsert <CR>"),
    button("r", "   Recents", ":FzfLua oldfiles <CR>"),
    -- button("p", "   Projects", ":Telescope projects <CR>"),
    button("f", "   Files", ":FzfLua files <CR>"),
    -- button("s", "   Session", ":SessionLoadPost<CR>"),
    button("c", "   Configuration", ":e ~/.config/nvim/init.lua <CR>"),
    button("b", "   Keybinds", ":e ~/.config/nvim/lua/keybinds.lua <CR>"),
    button("q", "   Quit", ":qa<CR>"),
  },
  opts = {
    position = "center",
    spacing = 0,
  },
}

local section = {
  header = header,
  buttons = buttons,
  greetHeading = greetHeading,
  footer = fortune,
}

local opts = {
  layout = {
    { type = "padding", val = 2 },
    section.header,
    { type = "padding", val = 1 },
    section.greetHeading,
    { type = "padding", val = 1 },
    section.buttons,
  },
  opts = {
    margin = 44,
  },
}

alpha.setup(opts)
