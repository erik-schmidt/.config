require'lspconfig'.svelte.setup{
	cmd = { vim.fn.stdpath('data') .. "/lspinstall/svelte/node_modules/.bin/svelteserver", "--stdio"},
	on_attach = require'lsp'.common_on_attach,
}
