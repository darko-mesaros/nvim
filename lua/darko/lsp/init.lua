local status_ok, _ = pcall(require, "lspconfig")        -- this just checks for lspconfig
if not status_ok then
  return                                                -- returns okay if not installed
end

require("darko.lsp.lsp-installer")
require("darko.lsp.handlers").setup()
