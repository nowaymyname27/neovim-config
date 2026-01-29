return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberdream").setup({
      -- Enable transparent background
      transparent = true,

      -- Enable italics comments
      italic_comments = true,

      -- Remove 'blink' from here as it caused the error
      extensions = {
        telescope = true,
        mini = true,
      },
    })

    -- Load the colorscheme after the setup
    vim.cmd("colorscheme cyberdream")
  end,
}
