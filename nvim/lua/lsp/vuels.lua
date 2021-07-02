require'lspconfig'.vuels.setup{
	cmd = { vim.fn.stdpath('data') .. "/lspinstall/vue/node_modules/.bin/vls", "--stdio" },
	on_attach = require'lsp'.tsserver_on_attach,
}
