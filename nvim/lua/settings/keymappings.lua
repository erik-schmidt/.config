vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-e>', ':NvimTreeToggle<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<c-j>', '(\"\\<C-n>")', { noremap = true, expr = true, silent = true})
vim.api.nvim_set_keymap('n', '<c-k>', '(\"\\<C-p>")', { noremap = true, expr = true, silent = true})
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<C-o>', '<C-\\><C-n><cmd>close<cr>', { noremap = true})
vim.api.nvim_set_keymap('n', '<C-W>h', ':wincmd h<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-W>j', ':wincmd j<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-W>k', ':wincmd k<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-W>l', ':wincmd l<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Up>', ':resize +5<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Down>', ':resize -5<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Right>', ':vertical resize -5<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Left>', ':vertical resize +5<CR>', { noremap = true, silent = true})
