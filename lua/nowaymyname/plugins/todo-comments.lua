return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VimEnter",
  opts = {
    -- The defaults are great, but you can customize colors/icons here if you want
  },
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
    { "<leader>ft", "<cmd>TodoTelescope<CR>", desc = "Find Todos" }, -- Search all todos
  }
}
