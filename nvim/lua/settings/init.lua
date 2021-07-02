vim.o.hidden = true
vim.o.showmode = false
vim.cmd('set nowrap')
vim.o.fileencoding = 'utf-8'
vim.o.pumheight = 10
vim.o.ruler = true
vim.o.cmdheight = 2
vim.cmd('set iskeyword+=-')
vim.o.mouse = "a"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.conceallevel = 0
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.cmd('set smarttab')
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.laststatus = 2
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.o.showtabline = 2
vim.o.backup = false
vim.o.writebackup = false
vim.wo.signcolumn = "yes"
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.cmd('set formatoptions-=cro')
vim.o.clipboard = "unnamedplus"
vim.cmd('set nohlsearch')
vim.cmd('set noerrorbells')
vim.cmd('set noswapfile')
vim.o.incsearch = true
vim.o.scrolloff = 2
vim.cmd('set colorcolumn=80')
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.confirm = true
vim.cmd('set grepprg="rg\\ --vimgrep\\ --smart-case\\ --follow"')
vim.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vim.cmd('set inccommand=split') -- Make substitution work in realtime
vim.o.title = true
TERMINAL = vim.fn.expand('$TERMINAL')
vim.cmd('let &titleold="'..TERMINAL..'"')
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.cmd('syntax on') -- syntax highlighting
-- vim.o.t_Co = "256" -- Support 256 colors
vim.cmd('set ts=4') -- Insert 2 spaces for a tab
vim.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldlevel = 20
vim.cmd('set background=dark')

vim.cmd 'au TextYankPost * silent! lua require(\'vim.highlight\').on_yank({higroup = \'IncSearch\', timeout = 250})'
