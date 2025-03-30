return {

  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'Mofiqul/adwaita.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      vim.cmd.colorscheme 'adwaita'

      -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
    end, -- configure and set on startup
    config = function()
      -- vim.g.adwaita_darker = true -- for darker version
      -- vim.g.adwaita_disable_cursorline = true -- to disable cursorline
      -- vim.g.adwaita_transparent = true -- makes the background transparent
      vim.cmd 'colorscheme adwaita'
    end,
  },
}
