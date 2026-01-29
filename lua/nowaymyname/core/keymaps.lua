-- set leader key to space bar
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })

-- clear search highlights
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- yank into the system clipboard
vim.keymap.set('n', '<leader>y', '"+yy', { noremap = true, silent = true, desc = "Yank line to system clipboard" })
vim.keymap.set('v', '<leader>y', '"+y', { noremap = true, silent = true, desc = "Yank selection to system clipboard" })
vim.keymap.set('n', '<leader>Y', 'gg"+yG',
  { noremap = true, silent = true, desc = "Yank entire file to system clipboard" })

vim.keymap.set('n', '<leader>D', 'ggVGd', { desc = 'Delete entire buffer' })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = "Clear search highlights" })

-- use 'jk' to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Open diagnostic float window
vim.keymap.set('n', '<leader>d', function()
  vim.diagnostic.open_float()
end, { desc = "Open diagnostic float window" })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
