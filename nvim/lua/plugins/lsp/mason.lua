return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls", -- Lua (nvim config)
        "ruby_lsp", -- Ruby/Rails
        "ts_ls", -- TypeScript/JavaScript
        "eslint", -- JavaScript linting
        "gopls", -- Go
      },
      automatic_installation = true,
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "stylua", -- Lua formatter
        "prettier", -- JavaScript/TypeScript/React formatter
        "eslint_d", -- JavaScript linter
        "gofumpt", -- Go formatter (stricter than gofmt)
        "goimports", -- Go imports organizer
        "markdownlint-cli2", -- Markdown linter
      },
    })

    -- Note: LSP server configuration is handled in lspconfig.lua
  end,
}
