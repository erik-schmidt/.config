vim.g.dashboard_custom_header = {
'                                                   ',
'     ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
'     ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
'     ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
'     ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
'     ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
'     ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
'                                                       ',
}

vim.g.dashboard_default_executer = 'telescope'

vim.g.dashboard_custom_section = {
  a = {description = {'  Find File           '}, command = 'lua require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({}))'},
  b = {description = {'  Recently Used Files '}, command = 'lua require("telescope.builtin").oldfiles(require("telescope.themes").get_dropdown({}))'},
  c = {description = {'  Load Last Session   '}, command = 'SessionLoad'},
  d = {description = {'  Find Word           '}, command = 'lua require("telescope.builtin").live_grep(require("telescope.themes").get_dropdown({}))'},
  e = {description = {'  Marks               '}, command = 'lua require("telescope.builtin").marks(require("telescope.themes").get_dropdown({}))'}
}
