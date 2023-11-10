local M = {}

-- for lukas-reineke/indent-blankline.nvim
M.blankline = {
  -- I like to see the indent bar at the first level
  show_first_indent_level = true,
}

M.telescope = {
  defaults = {
    mappings = {
      -- new mappings
    }
  }
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "terraform",
    "bash",
    "yaml",
    "python",
    "jq",
    "json",
    "csv",
    "diff",
    "dockerfile",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
  },
  -- for lukas-reineke/indent-blankline.nvim
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  -- enable vim-matchup in treesitter
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    -- disable = { "c", "ruby" },  -- optional, list of language that will be disabled
    -- [options]
  },

}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- shell
    "bash-language-server",

    -- terraform
    "terraform-ls",
    "tflint",

    -- yaml
    "yaml-language-server",
    "yamlfmt",
    "yamllint",

    -- python
    "pyright",
    "flake8",
    "black",
    "pydocstyle",
    "pylint",
    "autoflake",
    "autopep8",

    -- jq
    "jq-lsp",

    -- json
    "json-lsp",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
