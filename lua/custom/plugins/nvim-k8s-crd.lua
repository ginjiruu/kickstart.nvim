return {
  'anasinnyk/nvim-k8s-crd',
  event = { 'BufEnter *.yaml' },
  dependencies = { 'neovim/nvim-lspconfig' },
  opts = {
    cache_dir = vim.fn.expand '~/.cache/nvim-k8s-crd',
    k8s = {
      -- file_mask = '*.yaml',
      file_mask = nil,
    },
  },
}
