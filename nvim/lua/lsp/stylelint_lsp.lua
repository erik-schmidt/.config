require'lspconfig'.stylelint_lsp.setup{
	settings = {
		stylelintplus = {
			autoFixOnFormat = true,
			autoFixOnSave = true,
			filetypes = {"css", "less", "postcss", "scss", "sass", "sugarss", "vue", "wxss"}
		}
	},
	filetypes = {"css", "less", "postcss", "scss", "sass", "sugarss", "vue", "wxss"}
}
