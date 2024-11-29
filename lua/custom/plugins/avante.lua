return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    provider = 'ollama',
    vendors = {
      ---@type AvanteProvider
      ollama = {
        ['local'] = true,
        endpoint = 'https://ai.animeteamspeak.moe/v1',
        model = 'qwen2.5-coder:14b',
        parse_response_data = function(data_stream, event_state, opts)
          require('avante.providers').copilot.parse_response(data_stream, event_state, opts)
        end,
        api_key_name = 'ollam_key',
        parse_curl_args = function(opts, code_opts)
          return {
            url = opts.endpoint .. '/chat/completions',
            headers = {
              ['Accept'] = 'application/json',
              ['Content-Type'] = 'application/json',
            },
            body = {
              model = opts.model,
              messages = require('avante.providers').copilot.parse_messages(code_opts),
              max_tokens = 2048,
              stream = true,
            },
          }
        end,
      },
    },
    -- add any opts here
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = 'make',
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
  },
}
