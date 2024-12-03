return {
  'anasinnyk/nvim-k8s-crd',
  event = { 'BufEnter *.yaml' },
  dependencies = { 'neovim/nvim-lspconfig' },
  config = function()
    require('k8s-crd').setup {
      cache_dir = vim.fn.expand '~/.cache/nvim-k8s-crd',
      k8s = {
        file_mask = nil,
      },
    }
  end,
}
