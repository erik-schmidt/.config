local fn = vim.fn
local gl = require("galaxyline")
local condition = require("galaxyline.condition")
local diagnostic = require("galaxyline.provider_diagnostic")
local section = gl.section

local everforest_colors = {
  bg = '#3C474D',
  fg = '#d8caac',
  black = "#465258",
  blue = "#89beba",
  cyan = "#87c095",
  green = "#a7c080",
  purple = "#d39bb6",
  red = "#e68183",
  orange = "#e69875",
  white = "#CCCCCC",
  yellow = "#d9bb80",
  brightBlack = "#848A83",
  brightBlue = "#89beba",
  brightCyan = "#87c095",
  brightGreen = "#a7c080",
  brightPurple = "#d39bb6",
  brightRed = "#e68183",
  brightWhite = "#F2F2F2",
  brightYellow = "#d9bb80"
}

local mode_color = function ()
	local mode_color = {
		[110] = everforest_colors.green,
		[105] = everforest_colors.white,
		[99] = everforest_colors.cyan,
		[116] = everforest_colors.purple,
		[118] = everforest_colors.red,
		[22] = everforest_colors.red,
		[86] = everforest_colors.red,
		[82] = everforest_colors.orange,
		[115] = everforest_colors.orange,
		[83] = everforest_colors.orange,
	}

	local color = mode_color[fn.mode():byte()]
	if color ~= nil then
		return color
	else
		return everforest_colors.green
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
		highlight = {everforest_colors.bg, everforest_colors.bg, "bold"}
	}
}

section.left[2] = {
	FileIcon = {
		provider = {function () return '  ' end, 'FileIcon'},
		condition = condition.buffer_not_empty,
		highlight = {
			everforest_colors.brightBlack,
			everforest_colors.bg
		}
	}
}

section.left[3] = {
	FileTypeName = {
		provider = 'FileTypeName',
		condition = condition.buffer_not_empty,
		highlight = {
			everforest_colors.brightBlack,
			everforest_colors.bg
		},
		separator = "   ",
		separator_highlight = {"NONE", everforest_colors.bg}
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
		highlight = {everforest_colors.brightBlack, everforest_colors.bg}
	}
}

section.right[1] = {
	DiagnosticCheck = {
		provider = {LspCheckDiagnostics},
		highlight = {everforest_colors.brightBlack, everforest_colors.bg}
	}
}

section.right[2] = {
	DiagnosticError = {
		provider = {"DiagnosticError"},
		icon = '  ',
		highlight = {everforest_colors.red, everforest_colors.bg}
	}
}

section.right[3] = {
	DiagnosticWarn = {
		provider = {'DiagnosticWarn'},
		icon = '  ',
		highlight = {everforest_colors.yellow, everforest_colors.bg}
	}
}

section.right[4] = {
	DiagnosticInfo = {
		provider = {"DiagnosticInfo"},
		icon = '  ',
		highlight = {everforest_colors.blue, everforest_colors.bg}
	}
}

section.right[6] = {
	SpaceSeparator = {
		provider = {function () return ' ' end},
		highlight = {everforest_colors.bg, everforest_colors.bg}
	}
}

section.right[7] = {
	GitBranch = {
		provider = {function() return '  ' end, 'GitBranch'},
		condition = condition.check_git_workspace,
		highlight = {everforest_colors.orange, everforest_colors.bg}
	}
}

section.right[8] = {
	PerCent = {
		provider = 'LinePercent',
		separator = ' ',
		separator_highlight = {everforest_colors.bg, everforest_colors.bg},
		highlight = {everforest_colors.brightBlack, everforest_colors.bg}
	}
}

section.right[9] = {
	ViModeLine = {
		provider = function ()
			vim.api.nvim_command('hi GalaxyViModeLine guifg=' .. mode_color())
			return ' ▋'
		end,
		highlight = {everforest_colors.bg, everforest_colors.bg, "bold"}
	}
}

-- Short list status line

gl.short_line_list = {'NvimTree', 'vista', 'fzf', 'packer', 'Undotree'}

section.short_line_left[1] = {
	FileName = {
		provider = 'FileName',
		condition = condition.buffer_not_empty,
		highlight = {everforest_colors.brightBlack, everforest_colors.bg},
		separator = ' ',
		separator_highlight = {everforest_colors.bg, everforest_colors.bg}
	}
}

section.short_line_right[1] = {
	BufferIcon = {
		provider = 'BufferIcon',
		highlight = {everforest_colors.yellow, everforest_colors.bg},
		separator = ' ',
		separator_highlight = {everforest_colors.bg, everforest_colors.bg}
	}
}

-- Force manual load so that nvim boots with a status line
gl.load_galaxyline()
