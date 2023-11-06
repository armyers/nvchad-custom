local M = {}

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
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
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
    -- "mypy",
    "pydocstyle",
    "pylint",
    -- "pyre",
    "autoflake",
    "autopep8",

    -- jq
    "jq-lsp",
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
