return {
  'stevearc/oil.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,

      columns = {
        "icon",
      },
      win_options = {
        winblend = 0,
      },
      view_options = {
        show_hidden = true,
        is_always_hidden = function(name, bufnr)
          return name == ".." or name == ".git"
        end,
      },
      float = {
        padding = 2,
        max_width = 80,
        max_height = 20,
        border = "rounded",
        win_options = {
          winblend = 0,
        },
      },
    })

    vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory in float" })
    vim.keymap.set("n", "<leader>pv", "<CMD>Oil --float<CR>", { desc = "Project View (Float)" })
  end
}
