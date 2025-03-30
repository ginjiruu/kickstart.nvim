return {
  'someone-stole-my-name/yaml-companion.nvim',
  dependencies = {
    { 'neovim/nvim-lspconfig' },
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim' },
  },
  config = function()
    require('telescope').load_extension 'yaml_schema'
  end,
  setup = function()
    require('yaml_companion').setup {
      -- Your additional configuration options here
      schemas = {
        {
          name = 'Portable Cluster',
          uri = vim.fn.expand '~/.cache/nvim-k8s-crd/portable/all.json',
        },
      },
    }
  end,
  keys = {
    -- Define the keymap
    {
      '<leader>yu',
      function()
        require('yaml-companion').open_ui_select()
      end,
      mode = 'n', -- Normal mode
      desc = 'Open YAML Companion UI Select',
      noremap = true, -- Non-recursive mapping
      silent = true, -- Silent mapping (no messages)
    },
  },
}
