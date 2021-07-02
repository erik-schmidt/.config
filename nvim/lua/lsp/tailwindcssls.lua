require'lspconfig'.tailwindcss.setup {
    cmd = {
        "node", vim.fn.stdpath('data') .. "/lspinstall/tailwindcss/tailwindcss-intellisense/extension/dist/server/tailwindServer.js",
        "--stdio"
    },
    on_attach = require'lsp'.common_on_attach
}
