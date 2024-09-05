return {
  'christoomey/vim-tmux-navigator',
  event = 'VimEnter', -- Ensure it loads when Neovim starts
  cmd = {
    'TmuxNavigateLeft',
    'TmuxNavigateDown',
    'TmuxNavigateUp',
    'TmuxNavigateRight',
    'TmuxNavigatePrevious',
  },
  keys = {
    { '<c-left>', '<cmd>TmuxNavigateLeft<cr>' },
    { '<c-down>', '<cmd>TmuxNavigateDown<cr>' },
    { '<c-up>', '<cmd>TmuxNavigateUp<cr>' },
    { '<c-right>', '<cmd>TmuxNavigateRight<cr>' },
  },
}
