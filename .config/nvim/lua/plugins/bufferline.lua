return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      show_buffer_close_icons = false,  -- Disable close icons for buffers
      show_close_icon = false,          -- Disable the close icon on the buffer line
      separator_style = "thin",         -- Choose a separator style
      enforce_regular_tabs = false,     -- Control tab width
      diagnostics = "nvim_lsp",         -- Show LSP diagnostics on the buffer line
    }
  }
}
