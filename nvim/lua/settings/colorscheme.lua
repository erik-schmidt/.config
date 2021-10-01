-- vim.g.everforest_enable_italic = 1
-- vim.g.everforest_disable_italic_comment = 1
-- vim.g.everforest_background = 'soft'
-- vim.g.everforest_diagnostic_virtual_text = 'colored'
-- vim.g.everforest_diagnostic_line_highlight = 1
-- vim.g.everforest_current_word = 'underline'
-- vim.cmd('colorscheme everforest')

-- local nightfox = require('nightfox')
--
-- nightfox.setup({
--     fox = "palefox",
--     transparent = true,
--     terminal_colors = true,
--     styles = {
--         comments = "italic",
--         keywords = "bold",
--         functions = "italic,bold"
--     },
-- })
--
-- nightfox.load()

local catppuccino = require('catppuccino')

catppuccino.setup({
    colorscheme = "soft_manilo",
    transparency = true,
    term_colors = true,
    styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
	},
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = "italic",
                hints = "italic",
                warnings = "italic",
                information = "italic",
            },
            underlines = {
                errors = "underline",
                hints = "underline",
                warnings = "underline",
                information = "underline"
            }
        },
        lsp_trouble = true,
        lsp_saga = true,
        gitgutter = true,
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = true,
        },
        which_key = true,
        indent_blankline = {
            enabled = true,
            colored_indent_levels = true,
        },
        dashboard = true,
        neogit = true,
        barbar = true,
        lightspeed = true,
        ts_rainbow = true
    }
})

vim.cmd[[colorscheme catppuccino]]
