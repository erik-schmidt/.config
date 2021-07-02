require'lspconfig'.sqlls.setup{
  cmd = { "/home/linuxbrew/.linuxbrew/lib/node_modules/sql-language-server", "up", "--method", "stdio"};
  on_attach = require'lsp'.common_on_attach,
}
