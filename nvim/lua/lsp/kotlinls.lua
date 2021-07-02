require'lspconfig'.kotlin_language_server.setup{
    cmd = { vim.fn.stdpath('data') .. "/lspinstall/kotlin/language-server/server/bin/kotlin-language-server"},
    on_attach = require'lsp'.common_on_attach,
    root_dir = require('lspconfig/util').root_pattern('settings.gradle')
}
