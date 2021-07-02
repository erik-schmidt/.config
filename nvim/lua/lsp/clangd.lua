require'lspconfig'.clangd.setup{
	cmd = { vim.fn.stdpath('data') .. "/lspinstall/cpp/clangd/bin/clangd"},
	on_attach = require'lsp'.common_on_attach,
    root_dir = function() return vim.loop.cwd() end,
	handlers = {
		["textDocument/publishDiagnostic"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
			virtual_text = true,
			signs = true,
			underline = true,
			update_in_insert = true
	})
		}
}
