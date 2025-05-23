-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.schedule(function()
--   vim.opt.clipboard = 'unnamedplus'
-- end)

vim.schedule(function()
  vim.opt.clipboard = {
    -- vim.g.clipboard = {
    name = 'gpaste',
    copy = {
      ['+'] = { 'gpaste-client', 'add' },
      ['*'] = { 'gpaste-client', 'add' },
    },
    paste = {
      ['+'] = { 'gpaste-client', 'get', '--use-index', '0' },
      ['*'] = { 'gpaste-client', 'get', '--use-index', '0' },
    },
    cache_enabled = 0,
  }
end)

-- vim.schedule(function()
--   vim.opt.clipboard = {
--     'name': 'gpaste',
--     'copy': {
--       '+': ['gpaste-client', 'add']
--     }
--   } ---'unnamedplus'
-- end)
--
-- Enable break indent
vim.opt.breakindent = true

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
--  See `:help 'lisat'`
--  and `:help 'listchars'`a
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 20
