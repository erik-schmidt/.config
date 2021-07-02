require("toggleterm").setup{
    function(term)
        if (term.direction) == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<A-ö>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark background, 3: for light background
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applues in insert mode
    persist_size = true,
    direction = 'horizontal', -- 'vertical' | 'horizontal' | 'window' | 'float'
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell, -- Change the default shell
    -- This field is only relevant if direction is set to 'float'
    float_opts = {
        border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved'
        -- width = <value>
        -- height = <value>
        winblend = 3,
        highlights = {
            border = "Normal",
            background = "Normal",
        }
    }
}
