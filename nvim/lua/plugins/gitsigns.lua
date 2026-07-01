return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
      end

      -- Navigation between hunks (changes)
      map("n", "]h", function()
        if vim.wo.diff then
          vim.cmd.normal({ "]c", bang = true })
        else
          gs.nav_hunk("next")
        end
      end, "Next hunk")
      map("n", "[h", function()
        if vim.wo.diff then
          vim.cmd.normal({ "[c", bang = true })
        else
          gs.nav_hunk("prev")
        end
      end, "Previous hunk")

      -- Staging (git add) by hunk or by line
      map("n", "<leader>gs", gs.stage_hunk, "Stage hunk")
      map("v", "<leader>gs", function()
        gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, "Stage selected lines")
      map("n", "<leader>gr", gs.reset_hunk, "Reset hunk")
      map("v", "<leader>gr", function()
        gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, "Reset selected lines")
      map("n", "<leader>gu", gs.undo_stage_hunk, "Undo stage hunk")
      map("n", "<leader>gp", gs.preview_hunk, "Preview hunk")

      -- Actions
      map("n", "<leader>gb", function()
        gs.blame_line({ full = true })
      end, "Blame line")
      map("n", "<leader>gB", gs.toggle_current_line_blame, "Toggle line blame")
      map("n", "<leader>gd", gs.diffthis, "Diff this")
      map("n", "<leader>gD", function()
        gs.diffthis("~")
      end, "Diff this ~")
    end,
  },
}
