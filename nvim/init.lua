-- Config
require('settings')
require('settings.colorscheme')
require('settings.keymappings')


-- Packer
require('plugins')

-- Plugin Configs
require('plugins.asynctask')
require('plugins.autopairs')
require('plugins.barbar')
require('plugins.colorizer')
require('plugins.compe')
require('plugins.dashboard')
require('plugins.galaxyline')
require('plugins.gitsigns')
require('plugins.indent-blankline')
require('plugins.lightspeed')
require('plugins.lspinstall')
require('plugins.lspkind')
require('plugins.lspsaga')
require('plugins.nvim-ts-autotag')
require('plugins.nvimtree')
require('plugins.surround')
require('plugins.telescope')
require('plugins.toggleterm')
require('plugins.treesitter')
require('plugins.trouble')
require('plugins.vim-test')
require('plugins.vimwiki')
require('plugins.which-key')
require('plugins.symbols-outline')
require('plugins.zen')

-- LSP
require('lsp')
require('lsp.bashls')
require('lsp.clangd')
require('lsp.cssls')
require('lsp.csharp')
require('lsp.dockerls')
require('lsp.emmetls')
require('lsp.html')
require('lsp.jsonls')
require('lsp.kotlinls')
require('lsp.luals')
require('lsp.sqlls')
require('lsp.stylelint_lsp')
require('lsp.svelte')
require('lsp.tailwindcssls')
require('lsp.tsserver')
require('lsp.vimls')
require('lsp.vuels')
require('lsp.yamlls')
require('lsp.efm-general-ls')
