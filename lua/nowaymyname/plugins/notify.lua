return {
  "rcarriga/nvim-notify",
  opts = {
    timeout = 3000,                -- How long the message stays (3 seconds)
    stages = "fade",               -- How it appears (fade, slide, static)
    render = "compact",            -- Options: default, minimal, compact, wrapped
    background_colour = "#000000", -- Matches your transparent/dark theme
  },
  config = function(_, opts)
    local notify = require("notify")
    notify.setup(opts)
    -- This makes nvim-notify the default for all Neovim messages
    vim.notify = notify
  end,
}
