return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.styled_parts"] = true,
        ["blink.cmp"] = true, -- Integration with your completion engine
      },
    },
    -- route long messages to a split instead of a popup
    routes = {
      {
        filter = {
          event = "msg_show",
          any = { { find = "; after #%d+" }, { find = "; before #%d+" } },
        },
        view = "mini",
      },
    },
    presets = {
      bottom_search = true,         -- use a classic bottom cmdline for search
      command_palette = false,      -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false,           -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false,       -- add a border to hover docs and signature help
    },
  },
}
