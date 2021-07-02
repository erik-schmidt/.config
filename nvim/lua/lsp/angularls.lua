require'lspconfig'.angularls.setup {
	cmd = {vim.fn.stdpath('data') .. "/lspinstall/angular/node_modules/@angular/language-server/bin/ngserver", "--stdio"},
	on_attach = require'lsp'.common_on_attach,
}
