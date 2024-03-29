local remap = vim.api.nvim_set_keymap
local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

_G.MUtils = {}

-- Treesitter support
npairs.setup({
	check_ts = true,
	ts_config = {
		lua = {'string'},
		javascript = {'template_string'},
		java = false,
	}
})

local ts_conds = require('nvim-autopairs.ts-conds')

npairs.add_rules({
	Rule("%", "%", "lua")
		:with_pair(ts_conds.is_ts_node({'string', 'comment'})),
	Rule("$", "$", "lua")
		:with_pair(ts_conds.is_not_ts_node({'function'}))
})

vim.g.completion_confirm_key = ""
MUtils.completion_confirm=function ()
  if vim.fn.pumvisible() ~= 0 then
    if vim.fn.complete_info()["selected"] ~= -1 then
      return vim.fn["compe#confirm"](npairs.esc("<cr>"))
    else
      return npairs.esc("<cr>")
    end
  else
    return npairs.autopairs_cr()
  end
end

remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})

