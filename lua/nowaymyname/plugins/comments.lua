return {
  'numToStr/Comment.nvim',
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    -- We add this line to satisfy the LSP warning:
    ---@diagnostic disable-next-line: missing-fields
    require("Comment").setup({
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    })
    
    -- Also, modern context-commentstring needs its own setup call:
    require('ts_context_commentstring').setup {
      enable_autocmd = false,
    }
  end
}
