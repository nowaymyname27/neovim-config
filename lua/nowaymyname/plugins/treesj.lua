return {
  'Wansmer/treesj',
  keys = {
    -- We'll use <leader>m for "Modify/Multiline" toggle
    { '<leader>m',  function() require('treesj').toggle() end, desc = "Toggle Split/Join code block" },
    -- Optional: explicitly split
    { '<leader>js', function() require('treesj').split() end,  desc = "Split code block" },
    -- Optional: explicitly join
    { '<leader>jj', function() require('treesj').join() end,   desc = "Join code block" },
  },
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('treesj').setup({
      -- Disable default keymaps so we can use our own
      use_default_keymaps = false,
      -- Max length of a line to allow joining (default is 120)
      max_join_length = 120,
    })
  end,
}
