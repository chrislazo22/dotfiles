return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local keymap = vim.keymap

    -- Global diagnostic keymaps (work without LSP, e.g. for linters)
    keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", { silent = true, desc = "Show buffer diagnostics" })
    keymap.set("n", "<leader>d", vim.diagnostic.open_float, { silent = true, desc = "Show line diagnostics" })

    -- LSP keymaps when server attaches
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        opts.desc = "Go to definition"
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
      end,
    })

    -- Enable autocompletion capabilities
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Diagnostic symbols in sign column (gutter) - using modern API
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN] = "",
          [vim.diagnostic.severity.HINT] = "󰠠 ",
          [vim.diagnostic.severity.INFO] = "",
        },
      },
    })

    -- Configure Lua Language Server (for nvim config editing)
    vim.lsp.config.lua_ls = {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }, -- Fix "undefined global vim" warnings
          },
          completion = {
            callSnippet = "Replace",
          },
        },
      },
    }

    -- Configure Ruby LSP (Ruby on Rails)
    vim.lsp.config.ruby_lsp = {
      capabilities = capabilities,
    }

    -- Configure TypeScript/JavaScript (React)
    vim.lsp.config.ts_ls = {
      capabilities = capabilities,
    }

    vim.lsp.config.eslint = {
      capabilities = capabilities,
      settings = {
        experimental = {
          useFlatConfig = true,
        },
      },
    }

    -- Configure Go LSP
    vim.lsp.config.gopls = {
      capabilities = capabilities,
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
        },
      },
    }

    -- Enable all configured LSP servers
    vim.lsp.enable({ "lua_ls", "ruby_lsp", "ts_ls", "eslint", "gopls" })
  end,
}
