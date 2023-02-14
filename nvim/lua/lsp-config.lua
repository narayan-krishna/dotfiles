require("mason").setup()
require("mason-lspconfig").setup()

local navic = require("nvim-navic")

local on_attach = function(client, bufnr)
    -- if client.server_capabilities.documentSymbolProvider then
    --     navic.attach(client, bufnr)
    -- end
end

require('lspconfig').rust_analyzer.setup {
  on_attach = on_attach,
  settings = {
    ['rust-analyzer'] = {
      checkOnSave = {
        allFeatures = true,
        -- overrideCommand = {
        --     'cargo', 'clippy', '--fix', '--message-format=json',
        --     '--all-targets', '--all-features'
        -- }
      }
    }
  }
}

require('lspconfig').sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'a', 'vim', 'use'},
      },
    },
  },
}
