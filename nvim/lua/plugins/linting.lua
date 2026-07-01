return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      markdown = { "markdownlint-cli2" },
    }

    lint.linters["markdownlint-cli2"] = vim.tbl_deep_extend("force", lint.linters["markdownlint-cli2"], {
      args = { "--config", vim.fn.expand("~/.config/markdownlint/.markdownlint-cli2.yaml"), "--" },
    })

    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
