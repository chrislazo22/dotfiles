return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  opts = {
    indent = { char = "│" },
  },
  config = function(_, opts)
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#4a4a4a" })
    require("ibl").setup(opts)
  end,
}
