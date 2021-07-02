require'lspconfig'.tsserver.setup{
	cmd = { vim.fn.stdpath('data') .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server", "--stdio"},
	on_attach = require'lsp'.tsserver_on_attach,
	filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    root_dir = function() return vim.loop.cwd() end,
	settings = { documentFormatting = false },
	handlers = {
		["textDocument/publishDiagnostic"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
			virtual_text = true,
			signs = true,
			underline = true,
			update_in_insert = true,
	})
		}
}
