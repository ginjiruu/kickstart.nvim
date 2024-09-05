return {
  'christoomey/vim-tmux-navigator',
  cmd = {
    'TmuxNavigateLeft',
    'TmuxNavigateDown',
    'TmuxNavigateUp',
    'TmuxNavigateRight',
    'TmuxNavigatePrevious',
  },
  keys = {
    { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
    { '<c-s>', '<cmd><C-U>TmuxNavigateDown<cr>' },
    { '<c-t>', '<cmd><C-U>TmuxNavigateUp<cr>' },
    { '<c-n>', '<cmd><C-U>TmuxNavigateRight<cr>' },
    { '<c-q>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
  },
}
