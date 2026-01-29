return {
  "abecodes/tabout.nvim",
  event = "InsertCharPre", -- Load exactly when you start typing
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("tabout").setup {
      tabkey = '<Tab>',
      backwards_tabkey = '<S-Tab>',
      act_as_tab = true, -- If you aren't in a bracket, it acts like a normal Tab
      act_as_shift_tab = true,
      enable_backwards = true,
      completion = false, -- We disable this so blink.cmp handles the menu, not tabout
      tabouts = {
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = '`', close = '`' },
        { open = '(', close = ')' },
        { open = '[', close = ']' },
        { open = '{', close = '}' }
      },
      ignore_beginning = true, -- Don't tabout if your cursor is at the start of the line
    }
  end,
}
