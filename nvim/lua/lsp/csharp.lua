local pid = vim.fn.getpid();
local omnisharp_bin = vim.fn.stdpath('data') .. '/lspinstall/csharp/run'

require'lspconfig'.omnisharp.setup{
    on_attach = require'lsp'.common_on_attach,
    cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid)},
    root_dir = function() return vim.loop.cwd() end
}
