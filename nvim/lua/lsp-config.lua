require("mason").setup()
require("mason-lspconfig").setup()

require('lspconfig').rust_analyzer.setup {
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
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim', 'use'},
      },
    },
  },
}
