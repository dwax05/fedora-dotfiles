local on_attach = require("user.lspconfig").on_attach
local capabilities = require("user.lspconfig").capabilities


local options = {
  server = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
}

return options
