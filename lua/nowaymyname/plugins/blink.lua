return {
  "Saghen/blink.cmp",
  version = "*",
  dependencies = "rafamadriz/friendly-snippets",
  opts = {
    keymap = {
      preset = "none", -- We switch to 'none' to define everything manually

      -- THE ONE BUTTON ACCEPT (Enter or your remapped Caps Lock)
      ['<CR>'] = { 'select_and_accept', 'fallback' },

      -- NAVIGATION (Vim-style)
      -- When menu is open, move through list. When closed, move through splits.
      ['<C-j>'] = { 'select_next', 'fallback' },
      ['<C-k>'] = { 'select_prev', 'fallback' },

      -- TAB is kept empty for tabout.nvim
      ['<Tab>'] = {},
      ['<S-Tab>'] = {},

      -- Useful Extras
      ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
      ['<C-e>'] = { 'hide', 'fallback' },
      ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
      ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
    },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    signature = { enabled = true }
  },
}
