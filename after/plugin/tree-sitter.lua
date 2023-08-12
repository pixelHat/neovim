local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.fsharp = {
  install_info = {
    url = "https://github.com/Nsidorenco/tree-sitter-fsharp",
    branch = "develop",
    files = {"src/scanner.cc", "src/parser.c" },
    generate_requires_npm = true,
    requires_generate_from_grammar = true
  },
  filetype = "fsharp",
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "python",
    "haskell",
    "typescript",
    "tsx",
    "css",
    "javascript",
    "bash",
    "vue",
    "scss",
    "lua",
    "html",
    "dockerfile",
    "svelte"
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["ab"] = "@block.outer",
        ["ib"] = "@block.inner",
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["ma"] = "@parameter.inner",
        ["mc"] = "@class.outer",
        ["mf"] = "@function.outer",
        ["mb"] = "@statement.outer",
      },
      swap_previous = {
        ["mA"] = "@parameter.inner",
        ["mC"] = "@class.outer",
        ["mF"] = "@function.outer",
        ["mB"] = "@statement.outer",
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]]"] = "@class.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@class.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@class.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@class.outer",
      },
    },
    lsp_interop = {
      enable = true,
      border = 'none',
      peek_definition_code = {
        ["df"] = "@function.outer",
        ["dF"] = "@class.outer",
      },
    },
  }
}

