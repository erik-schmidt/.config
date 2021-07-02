require'lspconfig'.cssls.setup{
	cmd = {
		"node", vim.fn.stdpath('data') .. "/lspinstall/css/vscode-css/css-language-features/server/dist/node/cssServerMain.js",
		"--stdio"
		},
		on_attach = require'lsp'.common_on_attach,
}
