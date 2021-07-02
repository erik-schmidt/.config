require('which-key').setup {
	plugins = {
		marks = true, -- shows a list of your marks on ' and `
		registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
		-- the presets plugin, adss help for a bunch of default keybindings in Neovim
		-- No actual key bindings are created
		presets = {
			operators = true, -- adds help for operators like d, y, ...
			motions = true, -- adds help for motions
			text_objects = true, -- help for text objects triggered after entering an operator
			windows = true, -- default bindings on <c-w>
			nav = true, -- misc bindings to work with windows
			z = true, -- bindings for folds, spelling and others prefixed with z
			g = true, -- bindings for prefixed with g
		}
	},
    operators = { gc = "Comments" },
	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "➜", -- symbol used between a key and it's label
		group = "+", -- symbol prepended to a group
	},
	window = {
		border = "single", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = {1, 0, 1, 0}, -- extra window margin [top, right, bottom, left]
		padding = {2, 2, 2, 2}, -- extra window padding [top, right, bottom, left]
	},
	layout = {
		height = {min = 4, max = 25}, -- min and max height of the columns
		width = {min = 20, max = 50}, -- min and max width of the columns
		spacing = 3, -- spacing between columns
        align = "center"
	},
	hidden = {"<silent>", "<cmd>", "<Cmd>", "<CMD>", "<cr>", "<CR>", "<Cr>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
	show_help = true -- show help message on the command line when the popup is visible
}

local opts = {
	mode = "n", -- NORMAL mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = false, -- use `nowait` when creating keymaps
}

-- Set leader
vim.g.mapleader = '\\'

-- ToggleTerm Functions
local Terminal = require('toggleterm.terminal').Terminal

-- lazygit
local lazygit = Terminal:new({
    cmd = "lazygit",
    hidden = true,
    direction = "float"
})

function _lazygit_toggle()
    lazygit:toggle()
end

-- lazydocker
local lazydocker = Terminal:new({
    cmd = "lazydocker",
    hidden = true,
    direction = "float"
})

function _lazydocker_toggle()
    lazydocker:toggle()
end

-- terminal
local terminal = Terminal:new({})

function _terminal_toggle()
    terminal:toggle()
end

-- telescope
vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope find_files<CR>', {noremap = true, silent = true})

-- dashboard
vim.api.nvim_set_keymap('n', '<leader>;', ':Dashboard<CR>', {noremap = true, silent = true})

-- close buffer
vim.api.nvim_set_keymap('n', '<leader>c', ':BufferClose<CR>', {noremap = true, silent = true})

-- Vista
vim.api.nvim_set_keymap('n', '<leader>v', ':SymbolsOutline<CR>', {noremap = true, silent = true})

local mappings = {
	["c"] = "Close Buffer",
	["f"] = "Find Files",
	[";"] = "Dashboard",
	["v"] = "Symbols Outline",
	b = {
		name = "+Buffer",
		p = {"<cmd>BufferPrevious<cr>", "Previous Buffer"},
		n = {"<cmd>BufferNext<cr>", "Next Buffer"},
		m = {
			name = "+Move",
			n = {"<cmd>BufferMoveNext<cr>", "Buffer Move Next"},
			p = {"<cmd>BufferMovePrevious<cr>", "Buffer Move Previous"}
		},
		c = {
			name = "+Close",
			a = {"<cmd>BufferCloseAllButCurrent<cr>", "Close all Buffer except current"},
			l = {"<cmd>BufferCloseBuffersLeft<cr>", "Close all left Buffers"},
			r = {"<cmd>BufferCloseBuffersRight<cr>", "Close all right Buffers"}
		},
		["1"] = {"<cmd>BufferGoto 1<cr>", "Buffer 1"},
		["2"] = {"<cmd>BufferGoto 2<cr>", "Buffer 2"},
		["3"] = {"<cmd>BufferGoto 3<cr>", "Buffer 3"},
		["4"] = {"<cmd>BufferGoto 4<cr>", "Buffer 4"},
		["5"] = {"<cmd>BufferGoto 5<cr>", "Buffer 5"},
		["6"] = {"<cmd>BufferGoto 6<cr>", "Buffer 6"},
		["7"] = {"<cmd>BufferGoto 7<cr>", "Buffer 7"},
		["8"] = {"<cmd>BufferGoto 8<cr>", "Buffer 8"},
		l = {"<cmd>BufferLast<cr>", "Buffer last"},
		[";"] = {"<cmd>BufferPick<cr>", "Pick Buffer"}
	},
	g = {
		name = "+Git",
		B = {"<cmd>lua require'gitsigns'.blame_line()<cr>", "Blame Line"},
		b = {"<cmd>Telescope git_branches<cr>", "Checkout branch"},
		c = {"<cmd>Telescope git_commits<cr>", "Checkout commit"},
		C = {"<cmd>Telescope git_bcommits<cr>", "Chechkout commit (for current file)"},
		g = {"<cmd>Telescope git_status<cr>", "Open changed files"},
		j = {"<cmd>lua require'gitsigns'.next_hunk()<cr>", "Next Hunk"},
        k = {"<cmd>lua require'gitsigns'.prev_hunk()<cr>", "Prev Hunk"},
        p = {"<cmd>lua require'gitsigns'.preview_hunk()<cr>", "Preview Hunk"},
        r = {"<cmd>lua require'gitsigns'.reset_hunk()<cr>", "Reset Hunk"},
        R = {"<cmd>lua require'gitsigns'.reset_buffer()<cr>", "Reset Buffer"},
        S = {"<cmd>lua require'gitsigns'.stage_hunk()<cr>", "Stage Hunk"},
        u = {"<cmd>lua require'gitsigns'.undo_stage_hunk()<cr>", "Undo Stage Hunk"}
	},
	l = {
		name = "+LSP",
		g = {
			name = "+GoTo",
			d = {"<cmd>lua vim.lsp.buf.definition()<cr>", "Definition"},
			D = {"<cmd>lua vim.lsp.buf.declaration()<cr>", "Declaration"},
			i = {"<cmd>lua vim.lsp.buf.implementation()<cr>", "Implementation"},
			r = {"<cmd>lua vim.lsp.buf.references()<cr>", "References"},
        	t = {"<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition"},
		},
		a = {"<cmd>Lspsaga code_action<cr>", "Code Action"},
        A = {"<cmd>Lspsaga range_code_action<cr>", "Selected Action"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>lua vim.lsp.buf.formatting()<cr>", "Format"},
		h = {"<cmd>lua require('lspsaga.hover').render_hover_doc()<cr>", "Hover doc"},
		H = {"<cmd>lua require('lspsaga.signaturehelp').signature_help()<cr>", "Signature Help"},
        i = {"<cmd>LspInfo<cr>", "Info"},
        l = {"<cmd>Lspsaga lsp_finder<cr>", "LSP Finder"},
        L = {"<cmd>Lspsaga show_line_diagnostics<cr>", "Line Diagnostics"},
        p = {"<cmd>Lspsaga preview_definition<cr>", "Preview Definition"},
        q = {"<cmd>Telescope quickfix<cr>", "Quickfix"},
        r = {"<cmd>Lspsaga rename<cr>", "Rename"},
        s = {"<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols"},
        S = {"<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols"},
		t = {"<cmd>LspTroubleToggle<cr>", "Diagnostics List"},
        x = {"<cmd>cclose<cr>", "Close Quickfix"},
	},
	r = {
		name = "+Run",
		c = {"<cmd>AsyncTask file-compile<cr>", "Compile File"},
		e = {"<cmd>AsyncTaskEdit<cr>", "Edit local tasks"},
		g = {"<cmd>AsyncTaskEdit!<cr>", "Edit global tasks"},
		h = {"<cmd>AsyncTaskList!<cr>", "list hidden tasks"},
		m = {"<cmd>AsyncTaskMacro<cr>", "macro help"},
		o = {"<cmd>copen<cr>", "Open task view"},
		r = {"<cmd>AsyncTask file-run<cr>", "Run file"},
		p = {"<cmd>AsyncTask project-run<cr>", "Run project"},
		x = {"<cmd>cclose<cr>", "Close task view"}
	},
	s = {
        name = "+Search",
        b = {"<cmd>Telescope git_branches<cr>", "File"},
        c = {"<cmd>Telescope colorscheme<cr>", "Colorscheme"},
        d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
        D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
        f = {"<cmd>Telescope find_files<cr>", "Find File"},
        m = {"<cmd>Telescope marks<cr>", "Marks"},
        M = {"<cmd>Telescope man_pages<cr>", "Man Pages"},
        r = {"<cmd>Telescope oldfiles<cr>", "Open Recent File"},
        R = {"<cmd>Telescope registers<cr>", "Registers"},
        t = {"<cmd>Telescope live_grep<cr>", "Text"}
    },
	t = {
		name = "+Terminal",
        d = {'<cmd>lua _lazydocker_toggle()<cr>', 'lazydocker'},
        g = {'<cmd>lua _lazygit_toggle()<cr>', 'lazygit'},
        t = {'<cmd>lua _terminal_toggle()<cr>', 'new Terminal'}
	},
	T = {
		name = "+Test",
		n = {'<cmd>TestNearest<cr>', "Test nearest"},
		f = {'<cmd>TestFile<cr>', "Test file"},
		s = {'<cmd>TestSuite<cr>', "Test whole suite"},
		l = {'<cmd>TestLast<cr>', "Run last test"},
		v = {'<cmd>TestVisit<cr>', 'visit test file'}
	},
    z = {
        name = "+Zen",
        a = {"<cmd>TZAtaraxis<cr>", "Toggle Ataraxis mode"},
        f = {"<cmd>TZFocus<cr>", "Toggle focus mode"},
        m = {"<cmd>TZMinimalist<cr>", "Toggle minimalist mode"},
        b = {"<cmd>TZBottom<cr>", "Toggle bottom UI"},
        t = {"<cmd>TZTop<cr>", "Toggle top UI"},
        l = {"<cmd>TZLeft<cr>", "Toggle left UI"}
    },
	S = {name = "+Session", s = {"<cmd>SessionSave<cr>", "Save Session"}, l = {"<cmd>SessionLoad<cr>", "Load Session"}}
}

local wk = require("which-key")
wk.register(mappings, opts)
