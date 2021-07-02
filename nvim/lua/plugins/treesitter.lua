require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  ignore_install = {"haskell"},
  highlight = {
    enable = true
  },
  textobjects = {
      select = {
          enable = true,
          keymaps = {
              -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner"
            },
        },
        swap = {
            enable = true,
            swap_next = {
                ["<leader>a"] = "@parameter.inner",
            },
            swap_previous = {
                ["<leader>A"] = "@parameter.inner"
            }
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer",
            },
            goto_next_end = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer"
            },
            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
            },
            goto_previous_end = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer"
            }
        },
        lsp_interop = {
            enable = true,
            peek_definition_code = {
                ["df"] = "@function.outer",
                ["dF"] = "@class.outer"
            }
        }
    },
  incremental_selection = {
      enable = true,
      keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm"
        }
  },
  refactor = {
    smart_rename = {
        enable = true,
        keymaps = {
            smart_rename = "grr",
        }
     },
     navigation = {
         enable = true,
         keymaps = {
             goto_definition_lsp_fallback = "gnd",
             list_definitions = "gnD",
             list_definitions_toc = "gO",
             goto_next_usage = "<a-+>",
             goto_previous_usage = "<a-#>",
            },
        },
  },
  indent = { enable = true},
  autotag = {enable = true},
  autopairs = {enable = true},
  context_commentstring = {enable = true},
  rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = 1000,
    }
}
