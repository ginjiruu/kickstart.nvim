return {
  'cenk1cenk2/schema-companion.nvim',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim' },
  },
  config = function()
    require('schema-companion').setup {
      -- if you have telescope you can register the extension
      enable_telescope = true,
      matchers = {
        -- add your matchers
        require('schema-companion.matchers.kubernetes').setup { version = 'master' },
      },
      schemas = {
        {
          name = 'Portable Cluster',
          uri = vim.uri_from_fname(vim.fn.expand '~/.cache/nvim-k8s-crd/portable/all.json'),
        },
      },
    }
  end,
  keys = {
    -- Define the keymap
    {
      '<leader>yu',
      function()
        require('telescope').extensions.schema_companion.select_from_matching_schemas()
      end,
      mode = 'n', -- Normal mode
      desc = 'Open YAML Companion UI Select',
      noremap = true, -- Non-recursive mapping
      silent = true, -- Silent mapping (no messages)
    },
  },
}
