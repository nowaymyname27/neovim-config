return {
  "Saghen/blink.cmp",
  version = "*",                                 -- Use the latest release
  dependencies = "rafamadriz/friendly-snippets", -- Optional: adds standard snippets

  -- This 'opts' table is passed to blink.setup() automatically
  opts = {
    -- 1. Key assignments
    keymap = {
      preset = "default", -- Automatically sets up Up/Down/Enter

      -- Here is your custom TAB logic handled natively:
      ['<Tab>'] = { 'select_and_accept', 'fallback' },

      -- If you want Shift-Tab to go backwards
      ['<S-Tab>'] = { 'select_prev', 'fallback' },

      -- Scrolling docs
      ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
      ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
    },

    -- 2. Visuals
    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },

    -- 3. Sources (Where the suggestions come from)
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    -- 4. Signature Help (Popups that show function arguments)
    signature = { enabled = true }
  },
}
