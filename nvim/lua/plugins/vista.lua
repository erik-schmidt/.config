vim.g["vista#renderer#enable_icon"] = 1
vim.g.vista_echo_cursor_strategy = 'scroll'
vim.g.vista_close_on_jump = 1
vim.g.vista_close_on_fzf_select = 1

vim.cmd 'autocmd FileType vista,vista_kind nnoremap <buffer> <silent> / :<c-u>call vista#finder#fzf#Run()<CR>'
