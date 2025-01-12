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
				"jsonls",
				"lua_ls",
				"marksman",
				"pyright",
				"rubocop",
				"ruby_lsp",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"black", -- python formatter
				"eslint_d",
				"isort", -- python formatter
				"stylua", -- lua formatter
				"prettier", -- prettier formatter
			},
		})
	end,
}
