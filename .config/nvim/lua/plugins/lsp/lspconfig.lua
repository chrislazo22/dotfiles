return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		-- import lspconfig plugin
		local lspconfig = require("lspconfig")

		-- import mason_lspconfig plugin
		local mason_lspconfig = require("mason-lspconfig")

		-- import cmp-nvim-lsp plugin
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local keymap = vim.keymap

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }

				opts.desc = "Show LSP references"
				keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

				opts.desc = "Show LSP definitions"
				keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

				opts.desc = "See available code actions"
				keymap.set({ "n", "v" }, "<leader>gca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

				opts.desc = "Show buffer diagnostics"
				keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

				opts.desc = "Show line diagnostics"
				keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

				opts.desc = "Show documentation for what is under cursor"
				keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

				opts.desc = "Restart LSP"
				keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
			end,
		})

		-- used to enable autocompletion (assign to every lsp server config)
		local capabilities = cmp_nvim_lsp.default_capabilities()

		-- Change the Diagnostic symbols in the sign column (gutter)
		-- (not in youtube nvim video)
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		-- for type, icon in pairs(signs) do
		-- 	local hl = "DiagnosticSign" .. type
		-- 	vim.fn.diagnostic.config(hl, { text = icon, texthl = hl, numhl = "" })
		-- end

		-- 	mason_lspconfig.setup_handlers({
		-- 		function(server_name)
		-- 			lspconfig[server_name].setup({
		-- 				capabilities = capabilities,
		-- 			})
		-- 		end,
		-- 		["sourcekit"] = function()
		-- 			lspconfig["sourcekit"].setup({
		-- 				capabilities = capabilities,
		-- 			})
		-- 		end,
		-- 		["lua_ls"] = function()
		-- 			lspconfig["lua_ls"].setup({
		-- 				capabilities = capabilities,
		-- 				settings = {
		-- 					Lua = {
		-- 						diagnostics = {
		-- 							globals = { "vim" },
		-- 						},
		-- 						completion = {
		-- 							callSnippet = "Replace",
		-- 						},
		-- 					},
		-- 				},
		-- 			})
		-- 		end,
		-- 		["ruby_lsp"] = function()
		-- 			lspconfig["ruby_lsp"].setup({
		-- 				capabilities = capabilities,
		-- 			})
		-- 		end,
		-- 	})
	end,
}
