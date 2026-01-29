return {
  'stevearc/oil.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional, for file icons
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      -- Use a keymap to open oil (I recommend '-')
      keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<C-s>"] = "actions.select_vsplit",
        ["<C-h>"] = "actions.select_split",
        ["<C-t>"] = "actions.select_tab",
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = "actions.close",
        ["-"] = "actions.parent",
        ["_"] = "actions.open_cwd",
      },
      view_options = {
        show_hidden = true,
      },
    })

    -- Map '-' to open Oil
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end
}
