-- Set the filetype for .flecs files to be treated as C
vim.api.nvim_create_autocmd('BufRead,BufNewFile', {
  pattern = '*.flecs',
  command = 'setfiletype c',
})
-- Prevent LSP from attaching to .flecs files
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'c',
  callback = function()
    local bufnr = vim.api.nvim_get_current_buf()
    if vim.fn.expand '%:e' == 'flecs' then
      require('lspconfig').clangd.detach { bufnr = bufnr }
    end
  end,
})
