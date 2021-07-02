require('true-zen').setup({
    true_false_commands = false,
    cursor_by_mode = true,
    bottom = {
        hidden_laststatus = 0,
        hidden_ruler = false,
        hidden_showcmd = false,
        hidden_showmode = false,
        hidden_cmdheight = 1,

        show_laststatus = 2,
        show_ruler = true,
        shown_showmode = false,
        shown_showcmd = false,
        shown_cmdheight = 2,
    },
    top = {
        hidden_showtabline = 0,

        shown_showtabline = 2,
    },
    left = {
        hidden_number = false,
        hidden_relativenumber = false,
        hidden_signcolumn = "no",

        shown_number = true,
        shown_relativenumber = true,
        shown_signcolumn = "yes",
    },
    ataraxis = {
        ideal_writing_area_width = 0,
        just_do_it_for_me = true,
        top_padding = 1,
        bottom_padding = 1,
        force_when_plus_one_window = false,
        force_hide_statusline = true,
    },
    integrations = {
        integration_galaxyline = true,
        integration_vim_airline = false,
        integration_vim_powerline = false,
        integration_tmux = false,
        integration_express_line = false,
        integration_gitgutter = false,
        integration_vim_signify = false,
        integration_limelight = false
    }
})
