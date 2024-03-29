require("zen-mode").setup {
    window = {
        backdrop = 0.85, -- shade the backdrop of the Zen window. set to 1 to keep the same as Normal
        -- height and width can be:
        -- * an absolute number of cells when > 1
        -- * a percentage of the width / height of the editor when <= 1
        width = 120, -- width of the Zen window
        height = 1, -- height of the Zen window
        -- by default, no options are changed for the Zen window
        -- uncomment any of the options below, or add other vim.wo options you want to apply
        options = {
            signcolumn = "no", -- disable signcolumn
            number = false, -- disable number column
            relativenumber = false, -- disable relativenumbers
            -- cursorline = false, -- disable cursorline
            -- foldcolumn = "0", -- disable fold column
            -- list = false, -- disable whitespace characters
        },
    },
    plugins = {
        -- disable some global vim options (vim.o...)
        -- comment the lines to not apply the options
        -- options = {
        --     enabled = true,
        --     ruler = false, -- disable the ruler text in the cmd line area
        --     showcmd = false, -- disables the command in the last line of the screen
        -- },
        gitsigns = { enabled = false }, -- disables git signs
        tmux = { enabled = false }, -- disables the tmux statusline
    }
}
