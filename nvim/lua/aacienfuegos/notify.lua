require("notify").setup({
  -- Animation style (see below for details)
  stages = "fade_in_slide_out",

  -- Function called when a new window is opened, use for changing win settings/config
  on_open = nil,

  -- Function called when a window is closed
  on_close = nil,

  -- Render function for notifications. See notify-render()
  render = "default",

  -- Default timeout for notifications
  timeout = 5000,

  -- For stages that change opacity this is treated as the highlight behind the window
  -- Set this to either a highlight group or an RGB hex value e.g. "#000000"
  background_colour = "#000000",

  -- Minimum width for notification windows
  minimum_width = 50,

  -- Icons for the different levels
  icons = {
    ERROR = "",
    WARN = "",
    INFO = "",
    DEBUG = "",
    TRACE = "✎",
  },
})

-- Automatically opening the UI is deprecated.
-- You can replicate previous behaviour by adding the following to your config

-- local dap, dapui = require('dap'), require('dapui')
-- dap.listeners.after.event_initialized['dapui_config'] = function() dapui.open() end
-- dap.listeners.before.event_terminated['dapui_config'] = function() dapui.close() end
-- dap.listeners.before.event_exited['dapui_config'] = function() dapui.close() end

-- To hide this message, remove the `open_on_start` settings from your config

local log = require("plenary.log").new {
  plugin = "notify",
  level = "debug",
  use_console = false,
}

vim.notify = function(msg, level, opts)
  log.info(msg, level, opts)

  require "notify"(msg, level, opts)
end
