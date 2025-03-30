-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Set tabs to 2
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Navigate windows using Ctrl + Shift + Arrow Keys

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Left
map('n', '<C-S-Left>', ':wincmd h<CR>', opts)

-- Right
map('n', '<C-S-Right>', ':wincmd l<CR>', opts)

-- Up
map('n', '<C-S-Up>', ':wincmd k<CR>', opts)

-- Down
map('n', '<C-S-Down>', ':wincmd j<CR>', opts)

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all termi\nal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
