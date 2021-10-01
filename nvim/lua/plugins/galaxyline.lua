local fn = vim.fn
local gl = require("galaxyline")
local condition = require("galaxyline.condition")
local diagnostic = require("galaxyline.provider_diagnostic")
local section = gl.section

local cp_api = require('catppuccino.api.colors')
local err, colors = cp_api.get_colors('soft_manilo')

-- local colors = {
--  black_br = '#3C474D',
--   fg = '#d8caac',
--   black = "#465258",
--   blue = "#89beba",
--   cyan = "#87c095",
--   green = "#a7c080",
--   purple = "#d39bb6",
--   red = "#e68183",
--   orange = "#e69875",
--   white = "#CCCCCC",
--   yellow = "#d9bb80",
--   brightBlack = "#848A83",
--   brightBlue = "#89beba",
--   brightCyan = "#87c095",
--   brightGreen = "#a7c080",
--   brightPurple = "#d39bb6",
--   brightRed = "#e68183",
--   brightWhite = "#F2F2F2",
--   brightYellow = "#d9bb80"
-- }
local mode_color = function ()
	local mode_color = {
		[110] = colors.blue,
		[105] = colors.green,
		[99] = colors.magenta,
		[116] = colors.magenta,
		[118] = colors.red,
		[22] = colors.red,
		[86] = colors.red,
		[82] = colors.orange,
		[115] = colors.orange,
		[83] = colors.orange,
	}

	local color = mode_color[fn.mode():byte()]
	if color ~= nil then
		return color
	else
		return colors.green
	end
end

local LspCheckDiagnostics = function()
    if #vim.lsp.get_active_clients() > 0 and diagnostic.get_diagnostic_error() ==
        nil and diagnostic.get_diagnostic_warn() == nil and
        diagnostic.get_diagnostic_info() == nil then return '  ' end
    return ''
end

section.left[1] = {
	ViMode = {
		provider = function ()
			local aliases = {
				[110] = 'NORMAL',
				[105] = 'INSERT',
				[99] = 'COMMAND',
				[116] = 'TERMINAL',
				[118] = 'VISUAL',
				[22] = 'V-BLOCK',
				[86] = 'V-LINE',
				[82] = 'REPLACE',
				[115] = 'SELECT',
				[83] = 'S-LINE'
			}
			vim.api.nvim_command('hi GalaxyViMode guifg=' .. mode_color())
			local alias = aliases[vim.fn.mode():byte()]
			local mode
			if alias ~= nil then
				if condition.hide_in_width then
					mode = alias
				else
					mode = alias:sub(1, 1)
				end
			else
				mode = vim.fn.mode():byte()
			end
			return '▊ ' .. mode .. ' '
		end,
		highlight = {colors.black, colors.black, "bold"}
	}
}

section.left[2] = {
	FileIcon = {
		provider = {function () return '  ' end, 'FileIcon'},
		condition = condition.buffer_not_empty,
		highlight = {
			colors.black_br,
			colors.black
		}
	}
}

section.left[3] = {
	FileTypeName = {
		provider = 'FileTypeName',
		condition = condition.buffer_not_empty,
		highlight = {
			colors.black_br,
			colors.black
		},
		separator = "   ",
		separator_highlight = {"NONE", colors.black}
	}
}

section.left[4] = {
	LspClient = {
		provider = 'GetLspClient',
		condition = function ()
			local tbl = {['dashboard'] = true,[''] = true}
			if tbl[vim.bo.filetype] then
				return false
			end
			return true
		end,
		highlight = {colors.black_br, colors.black}
	}
}

section.right[1] = {
	DiagnosticCheck = {
		provider = {LspCheckDiagnostics},
		highlight = {colors.black_br, colors.black}
	}
}

section.right[2] = {
	DiagnosticError = {
		provider = {"DiagnosticError"},
		icon = '  ',
		highlight = {colors.red, colors.black}
	}
}

section.right[3] = {
	DiagnosticWarn = {
		provider = {'DiagnosticWarn'},
		icon = '  ',
		highlight = {colors.yellow, colors.black}
	}
}

section.right[4] = {
	DiagnosticInfo = {
		provider = {"DiagnosticInfo"},
		icon = '  ',
		highlight = {colors.black_br, colors.black}
	}
}

section.right[6] = {
	SpaceSeparator = {
		provider = {function () return ' ' end},
		highlight = {colors.black, colors.black}
	}
}

section.right[7] = {
	GitBranch = {
		provider = {function() return '  ' end, 'GitBranch'},
		condition = condition.check_git_workspace,
		highlight = {colors.orange, colors.black}
	}
}

section.right[8] = {
	PerCent = {
		provider = 'LinePercent',
		separator = ' ',
		separator_highlight = {colors.black, colors.black},
		highlight = {colors.black_br, colors.black}
	}
}

section.right[9] = {
	ViModeLine = {
		provider = function ()
			vim.api.nvim_command('hi GalaxyViModeLine guifg=' .. mode_color())
			return ' ▋'
		end,
		highlight = {colors.black, colors.black, "bold"}
	}
}

-- Short list status line

gl.short_line_list = {'NvimTree', 'vista', 'fzf', 'packer', 'Undotree'}

section.short_line_left[1] = {
	FileName = {
		provider = 'FileName',
		condition = condition.buffer_not_empty,
		highlight = {colors.brightBlack, colors.black},
		separator = ' ',
		separator_highlight = {colors.black, colors.black}
	}
}

section.short_line_right[1] = {
	BufferIcon = {
		provider = 'BufferIcon',
		highlight = {colors.yellow, colors.black},
		separator = ' ',
		separator_highlight = {colors.black, colors.black}
	}
}

-- Force manual load so that nvim boots with a status line
gl.load_galaxyline()
