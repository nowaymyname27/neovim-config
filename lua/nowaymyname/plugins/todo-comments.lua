return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VimEnter",
  opts = {
    keywords = {
      NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
    },
  },
  keys = {
    { "]t",         function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
    { "[t",         function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
    { "<leader>ft", "<cmd>TodoTelescope<CR>",                            desc = "Find Todos" }, -- Search all todos
  }
}
