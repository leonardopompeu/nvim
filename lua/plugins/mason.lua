return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Go
        "gopls",
        "golangci-lint",
        "goimports",
        "gofumpt",

        -- JavaScript / TypeScript / React
        "typescript-language-server",
        "eslint-lsp",
        "prettier",

        -- Python
        "pyright",
        "black",
        "isort",

        -- Lua
        "lua-language-server",
        "stylua",

        -- Markdown
        "marksman",
        "markdownlint",

        -- JSON
        "json-lsp",
        "jq",
      },
    },
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "golangci-lint",
        "goimports",
        "gofumpt",
        "typescript-language-server",
        "eslint-lsp",
        "prettier",
        "pyright",
        "black",
        "isort",
        "lua-language-server",
        "stylua",
        "marksman",
        "markdownlint",
        "json-lsp",
        "jq",
      },
      auto_update = false,
      run_on_start = true,
    },
  },
}
