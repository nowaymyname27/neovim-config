vim.g.netrw_liststyle = 3

-- line numbers
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.number = true         -- shows absolute line number on cursor line

vim.opt.mouse = 'a'           -- enable mouse mode

vim.opt.showmode = false      -- don't show which mode you are in

-- tabs & indentation
vim.opt.tabstop = 2       -- 2 spaces for tabs (prettier default)
vim.opt.softtabstop = 2   -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 2    -- 2 spaces for indent width
vim.opt.expandtab = true  -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one
vim.opt.smartindent = true

-- Enable break indent
vim.opt.breakindent = true

-- Backup files
vim.opt.backup = false      -- Don't create backup files
vim.opt.writebackup = false -- Don't create backup before overwriting a file

-- Folding
vim.opt.foldmethod = "indent" -- Fold based on indentation
vim.opt.foldlevel = 99        -- Open all folds by default

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- FileType specific settings
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    -- Show a visual guide at 90 characters
    vim.wo.colorcolumn = '90'
    -- Disable automatic comment continuation
    -- 'r' = continue after Enter in Insert mode
    -- 'o' = continue after 'o' or 'O' in Normal mode
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})
