require'lspsaga'.init_lsp_saga{
	use_saga_diagnostic_sign = false,
	code_action_prompt = {
		enable = true,
		sign = false,
		virtual_text = true
	},
	border_style = 'round',
	rename_prompt_prefix = '>'
}

vim.cmd [[ highlight link LspSagaLightBulb Yellow ]]
