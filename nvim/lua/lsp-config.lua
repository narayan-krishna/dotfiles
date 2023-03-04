require("mason").setup()
require("mason-lspconfig").setup()

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

require('lspconfig').lua_ls.setup {
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

require('lspconfig').clangd.setup {
  on_attach = on_attach,
}

require('lspconfig').pylsp.setup {
  on_attach = on_attach,
}

local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
