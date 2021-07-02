-- sh

local sh_arguments = {}

local shfmt = {formatCommand = 'shfmt -ci -s -bn', formatStdin = true}

local shellcheck = {
	LintCommand = 'shellcheck -f gcc -x',
	lintFormats = {'%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m'}
}

table.insert(sh_arguments, shfmt)
table.insert(sh_arguments, shellcheck)

-- lua

local lua_arguments = {}

local luaFormat = {
	formatCommand = "lua-format -i --no-keep-simple-function-one-line --column-limit=80",
	formatStdin = true
}

table.insert(lua_arguments, luaFormat)

-- typescript

local prettier = {formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true}

local eslint = {
	lintCommand = "./node_modules/.bin/eslint -f unix --stdin --stdin-filename ${INPUT}",
	lintIgnoreExitCode = true,
	lintStdin = true,
	lintFormats = {"%f:%l:%c: %m"},
	formatCommand = "./node_modules/.bin/eslint -- fix-to-stdout --stdin-filename ${INPUT}",
	formatStdin = true
}

local tsserver_args = {}

table.insert(tsserver_args, prettier)
table.insert(tsserver_args, eslint)

-- setup

require'lspconfig'.efm.setup {
	cmd = { vim.fn.stdpath('data') .. "/lspinstall/efm/efm-langserver"},
	init_options = {documentFormatting = true, codeAction = false},
	filetypes = {"lua", "python", "typescript", "typescriptreact", "javascriptreact", "javascript", "html", "css", "json", "yaml", "markdown", "vue"},
	settings = {
		rootMarkers = {".git/"},
		languages = {
			sh = sh_arguments,
			lua = lua_arguments,
			javascript = tsserver_args,
			javascriptreact = tsserver_args,
			typescript = tsserver_args,
			typescriptreact = tsserver_args,
			css = {prettier},
			vue = {prettier},
			html = {prettier},
			json = {prettier},
			yaml = {prettier},
		}
	}
}
