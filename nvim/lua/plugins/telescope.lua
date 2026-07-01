return {
  "nvim-telescope/telescope.nvim",
  branch = "master", -- Use master branch for latest Neovim 0.11+ compatibility fixes
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local action_state = require("telescope.actions.state")

    -- Open all marked files (via <Tab>) as buffers; fall back to default if none marked
    local function open_multi(prompt_bufnr)
      local picker = action_state.get_current_picker(prompt_bufnr)
      local selections = picker:get_multi_selection()

      if vim.tbl_isempty(selections) then
        actions.select_default(prompt_bufnr) -- nothing marked: open the file under the cursor
        return
      end

      actions.close(prompt_bufnr)
      for _, entry in ipairs(selections) do
        local filename = entry.filename or entry.value
        if filename then
          vim.cmd(string.format("edit %s", vim.fn.fnameescape(filename)))
        end
      end
    end

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse, -- mark file & move down
            ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better, -- mark file & move up
            ["<CR>"] = open_multi, -- open all marked files as buffers (or single file under cursor)
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send marked files to quickfix
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
  end,
}
