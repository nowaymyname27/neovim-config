return {
  "Saghen/blink.cmp",
  version = "*",
  dependencies = "rafamadriz/friendly-snippets",
  opts = {
    -- 1. General Keymaps (for writing code)
    keymap = {
      preset = "none",

      -- Accept suggestion with Enter
      ['<CR>'] = { 'accept', 'fallback' },

      -- Navigate list
      ['<C-j>'] = { 'select_next', 'fallback' },
      ['<C-k>'] = { 'select_prev', 'fallback' },

      -- Scroll docs
      ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
      ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

      -- Ensure these are NOT mapped so Neotab can have them
      ['<Tab>'] = { 'fallback' },
      ['<S-Tab>'] = { 'fallback' },
    },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = 'mono'
    },

    completion = {
      menu = { auto_show = true },
      ghost_text = { enabled = false },
    },

    -- 2. Define Sources
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },

      -- Explicitly define providers so cmdline can find them
      providers = {
        lsp = { name = 'lsp', module = 'blink.cmp.sources.lsp' },
        path = { name = 'path', module = 'blink.cmp.sources.path' },
        snippets = { name = 'snippets', module = 'blink.cmp.sources.snippets' },
        buffer = { name = 'buffer', module = 'blink.cmp.sources.buffer' },
      },
    },

    -- 3. Command Line Logic (The Bar at the bottom)
    cmdline = {
      enabled = true,
      keymap = {
        preset = 'none',

        -- ENTER: Ignores the menu and runs the command immediately.
        ['<CR>'] = { 'fallback' },

        -- CTRL + y: Accepts the selected suggestion
        ['<C-y>'] = { 'accept', 'fallback' },

        -- NAVIGATION
        ['<C-j>'] = { 'select_next', 'fallback' },
        ['<C-k>'] = { 'select_prev', 'fallback' },

        -- TAB: Useful for cycling through files in command mode
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
      },
      sources = function()
        local type = vim.fn.getcmdtype()
        -- Search mode (/) uses buffer words
        if type == '/' or type == '?' then return { 'buffer' } end
        -- Command mode (:) uses command history and file paths
        if type == ':' then return { 'cmdline', 'path' } end
        return {}
      end
    },

    signature = { enabled = true }
  },
}
