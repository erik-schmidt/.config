require'lspconfig'.yamlls.setup{
	cmd = { vim.fn.stdpath('data') .. "/lspinstall/yaml/node_modules/.bin/yaml-language-server", "--stdio" },
	on_attach = require'lsp'.common_on_attach,
}
