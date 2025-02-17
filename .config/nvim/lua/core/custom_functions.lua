-- function _G.search_replace()
--   -- Try to handle the entire process with a protected call (to catch Ctrl-C)
--   local success, err = pcall(function()
--     -- Ask for the word to search and replace with
--     local word = vim.fn.input("Search for: ")
--     local replace = vim.fn.input("Replace with: ")
--
--     -- Highlight the search term immediately after typing the word
--     vim.o.hlsearch = true
--     vim.cmd('let @/ = "' .. word .. '"')  -- Set the search register to the word
--
--     -- Ask for confirmation
--     local confirm = vim.fn.input("Confirm replacements (y/n): ")
--
--     if confirm:lower() == "y" then
--       vim.cmd(string.format('%%s/%s/%s/gc', word, replace))
--     else
--       print("Search and replace canceled.")
--     end
--
--     -- Optionally, turn off the search highlight after the operation
--     vim.o.hlsearch = false
--   end)
--
--   -- If pcall fails, print the error (such as if Ctrl-C is pressed)
--   if not success then
--     print("Operation canceled: " .. err)
--     vim.o.hlsearch = false  -- Ensure hlsearch is turned off if Ctrl-C is pressed
--   end
-- end
--
-- -- Bind the function to a key (e.g., <Leader>sr)
-- vim.api.nvim_set_keymap('n', '<Leader>sr', ':lua search_replace()<CR>', { noremap = true, silent = true })

function _G.search_replace()
  -- Try to handle the entire process with a protected call (to catch Ctrl-C)
  local success, err = pcall(function()
    -- Ask for the word to search and replace with
    local word = vim.fn.input("Search for: ")
    local replace = vim.fn.input("Replace with: ")

    -- Highlight the search term immediately after typing the word
    vim.o.hlsearch = true
    vim.cmd('let @/ = "' .. word .. '"')  -- Set the search register to the word

    -- Get the first match to show in the confirmation prompt
    local first_match = vim.fn.matchstr(vim.fn.getline(1, "$"), word)

    -- Ask for confirmation before replacing each match
    local confirm = "n"
    while confirm ~= "y" and confirm ~= "n" do
      confirm = vim.fn.input(string.format("Found '%s'. Replace with '%s'? (y/n): ", first_match, replace))
    end

    -- If confirmed, proceed with replacement
    if confirm:lower() == "y" then
      vim.cmd(string.format('%%s/%s/%s/gc', word, replace))
      print("Replacement done.")
    else
      print("Search and replace canceled.")
    end

    -- Optionally, turn off the search highlight after the operation
    vim.o.hlsearch = false
  end)

  -- If pcall fails, print the error (such as if Ctrl-C is pressed)
  if not success then
    print("Operation canceled: " .. err)
    vim.o.hlsearch = false  -- Ensure hlsearch is turned off if Ctrl-C is pressed
  end
end

-- Bind the function to a key (e.g., <Leader>sr)
vim.api.nvim_set_keymap('n', '<Leader>sr', ':lua search_replace()<CR>', { noremap = true, silent = true })
