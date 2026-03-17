return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    indent = {
      char = "┊", -- A subtle dotted line
      tab_char = "┊",
    },
    scope = { enabled = true }, -- Highlights the current block you're in
    exclude = {
      filetypes = {
        "help",
        "trouble",
        "lazy",
        "oil",
      },
    },
  },
}
