return {
  bashls = {},
  clangd = {
    cmd = { 'clangd' },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
    root_dir = require('lspconfig.util').root_pattern('.git', 'compile_commands.json', 'build/', 'src/'),
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    settings = {
      clangd = {
        arguments = {
          '--all-scopes-completion',
          '--clang-tidy',
          '--header-search-path=' .. os.getenv 'HOME' .. '~/bake/include',
          '--header-search-path=/usr/local/include', -- Add other system paths if needed
          '--background-index',
          '--pch-storage=memory',
        },
      },
    },
  },
  kcl = {},
  gopls = {},
  ols = {},
  html = {
    filetypes = { 'templ', 'html' },
  },
  htmx = { filetypes = { 'html', 'templ' } },
  tailwindcss = {
    filetypes = { 'templ', 'astro', 'javascript', 'typescript', 'react' },
    settings = {
      tailwindCSS = {
        includeLanguages = {
          templ = 'html',
        },
      },
    },
  },
  yamlls = {},
  helm_ls = {
    yamlls = {
      path = 'yaml-language-server',
    },
  },
  templ = {
    filetypes = { 'templ' },
  },
  lua_ls = {
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        -- diagnostics = { disable = { 'missing-fields' } },
      },
    },
  },
}
