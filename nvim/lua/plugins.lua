local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute "packadd packer.nvim"
end

--- Check if a file or directory exists in this path
local function require_plugin(plugin)
  local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"

  local plugin_path = plugin_prefix .. plugin .. "/"

  local ok, err, code = os.rename(plugin_path, plugin_path)
  if not ok then
    if code == 13 then
      return true
    end
  end

  if ok then
    vim.cmd("packadd " .. plugin)
  end
  return ok, err, code
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(
  function(use)

    -- Packer can manage itself as an optional plugin
    use "wbthomason/packer.nvim"

    -- Neovim Built-in LSP
    use {"neovim/nvim-lspconfig", opt = true}
	use {"nvim-lua/lsp-status.nvim", opt = true}
    use {"glepnir/lspsaga.nvim", opt = true}
    use {"kabouzeid/nvim-lspinstall", opt = true}
	use "onsails/lspkind-nvim"

    -- Telescope
    use {"nvim-lua/popup.nvim", opt = true}
    use {"nvim-lua/plenary.nvim", opt = true}
    use {"nvim-telescope/telescope.nvim", opt = true}
	use {"nvim-telescope/telescope-fzy-native.nvim", opt = true}

	-- Trouble
	use {"folke/lsp-trouble.nvim", opt = true}

    -- Autocomplete
	use {"hrsh7th/nvim-compe", opt = true}
    use {"hrsh7th/vim-vsnip", opt = true}
    use {"rafamadriz/friendly-snippets", opt = true}

    -- Indent Blankline
    use {"lukas-reineke/indent-blankline.nvim"}

    -- Treesitter
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
    use {"nvim-treesitter/playground", opt = true}
    use {"nvim-treesitter/nvim-treesitter-textobjects"}
    use {"nvim-treesitter/nvim-treesitter-refactor", opt = true}
    use {"p00f/nvim-ts-rainbow", opt = true}
    use {"windwp/nvim-ts-autotag", opt = true}

    -- Tmux
    use({ "nathom/tmux.nvim", config = [[require("config.tmux")]] })

    -- Explorer
	use {"kyazdani42/nvim-tree.lua"}

	-- Color
	use 'norcalli/nvim-colorizer.lua'

	-- Tagbar
    use "simrat39/symbols-outline.nvim"

    -- Surround
    use {"blackCauldron7/surround.nvim",
        config = function()
         require "surround".setup {}
        end
    }

    -- Auto pairs
    use {"windwp/nvim-autopairs", opt = true}

    -- Better commenting
    use {"terrortylor/nvim-comment",
        config = function ()
            require('nvim_comment').setup()
        end
    }

    -- Better quickfix
    use {"kevinhwang91/nvim-bqf", opt = true}

    -- Zen Mode
    use "folke/zen-mode.nvim"

    -- Number line peeking
    use {"nacro90/numb.nvim",
        config = function()
            require("numb").setup()
        end
    }

    -- Git
    use {"lewis6991/gitsigns.nvim",
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    -- Keybindings Guide
	use {"folke/which-key.nvim", opt = true}

    -- Terminal
    use {"akinsho/nvim-toggleterm.lua"}

    -- Start Screen
    use {"glepnir/dashboard-nvim", opt = true}


    -- Cool Icons
    use {"kyazdani42/nvim-web-devicons", opt = true}

    -- Statusline
    use {"glepnir/galaxyline.nvim", opt = true}
	use {'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons' }

    -- Async Tasks
    use "skywind3000/asynctasks.vim"
    use "skywind3000/asyncrun.vim"

    -- Easy Motion
    use "ggandor/lightspeed.nvim"

    -- Colorscheme
    use "sainnhe/everforest"
    use "sainnhe/edge"
    use "sainnhe/gruvbox-material"

    -- Todo comments
    use {"folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup{}
    end
    }

    -- Better Liquid support for Jekyll
    use {"tpope/vim-liquid", opt = true}

	-- context commentstring
	use 'JoosepAlviste/nvim-ts-context-commentstring'

	-- Tests
	use "janko/vim-test"

    -- Preview and browse json
    use "gennaro-tedesco/nvim-jqx"

    require_plugin("nvim-lspconfig")
    require_plugin("lspsaga.nvim")
    require_plugin("nvim-lspinstall")
    require_plugin("popup.nvim")
    require_plugin("plenary.nvim")
    require_plugin("telescope.nvim")
    require_plugin("nvim-compe")
    require_plugin("vim-vsnip")
    require_plugin("friendly-snippets")
    require_plugin("nvim-treesitter")
    require_plugin("nvim-ts-autotag")
    require_plugin("nvim-tree.lua")
    require_plugin("nvim-autopairs")
    require_plugin("nvim-bqf")
    require_plugin("gitsigns.nvim")
	require_plugin("which-key.nvim")
    require_plugin("nvim-toggleterm")
    require_plugin("dashboard-nvim")
    require_plugin("nvim-web-devicons")
    require_plugin("galaxyline.nvim")
    require_plugin("asynctask")
    require_plugin("asyncrun")
    require_plugin("asyncrun.extra")
    require_plugin("vim-test")
    require_plugin("nvim-colorizer")
    require_plugin("everforest")
    require_plugin("edge")
    require_plugin("gruvbox-material")
    require_plugin("vim-liquid")
	require_plugin('nvim-bufferline.lua')
	require_plugin('lsp-status.nvim')
	require_plugin('vista.vim')
	require_plugin('telescope-fzy-native.nvim')
	require_plugin('lsp-trouble.nvim')
	require_plugin('vim-test')
    require_plugin('nvim-comment')
    require_plugin('zen-mode.nvim')
    require_plugin('numb')
    require_plugin('symbols-outline')
    require_plugin('todo-comments')
    require_plugin('nvim-jqx')
    require_plugin('surround.nvim')
    require_plugin('vim-vsnip')
    require_plugin('nvim-ts-rainbow')
    require_plugin('nvim-treesitter-refactor')
    require_plugin('indent-blankline.nvim')
    require_plugin('playground')
    require_plugin('lightspeed.nvim')
  end
)
