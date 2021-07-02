vim.g.indent_blankline_char = "|"
vim.g.indent_blankline_show_first_indent_level = true
vim.g.indent_blankline_filetype_exclude = {
    "dashboard",
    "log",
    "packer",
    "TelescopePrompt",
    "help",
    "symbols-outline",
    "NvimTree",
    "git",
    "ToggleTerm",
    "",
}
vim.g.indent_blankline_buftype_exclude = {"terminal", "nofile"}
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {
    "class",
    "function",
    "method",
    "block",
    "list_literal",
    "selector",
    "^if",
    "^table",
    "if_statement",
    "return_statement",
    "jsx_expression",
    "jsx_fragment",
    "template_element",
    "element",
    "while",
    "for",
    "export_statement",
    "lexical_declaration",
    "pair",
    "switch_statement",
    "switch_case",
    "expression_statement",
    "call_expression",
}
vim.g.indent_blankline_use_treesitter = true

