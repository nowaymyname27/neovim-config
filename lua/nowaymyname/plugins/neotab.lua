return {
  "kawre/neotab.nvim",
  event = "InsertEnter",
  opts = {
    tabkey = "<Tab>",
    act_as_tab = true,      -- Pressing tab at start of line still indents
    behavior = "direction", -- Jumps to the next closing character
    pairs = {
      { open = "(", close = ")" },
      { open = "[", close = "]" },
      { open = "{", close = "}" },
      { open = "'", close = "'" },
      { open = '"', close = '"' },
      { open = "`", close = "`" },
      { open = "<", close = ">" },
    },
    -- This ensures it doesn't jump if a completion menu is open
    exclude = {},
    smart_punctuation = {
      enabled = true,
      handlers = {
        pair_jump = function(char)
          return char ~= "<" -- Don't jump for C++ templates unless you want to
        end,
      },
    },
  },
}
