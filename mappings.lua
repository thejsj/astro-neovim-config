-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    [";"] = { ":" },
    [":"] = { ";" },
    ["<Tab>j"] = { ":bp<CR>", desc = "Previous Tab" },
    ["<Tab>k"] = { ":bn<CR>", desc = "Next Tab" },
    ["<c-p>"] = { "<cmd>lua require('telescope.builtin').find_files()<cr>", desc = "" },
    ["<leader>c"] = {
      function() require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Toggle comment line",
    }
  },
  v = {
    ["<leader>/"] = {
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
      desc = "Toggle comment for selection",
    }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<Tab>j"] = { ";bp<CR>", desc = "Previous Tab" },
    ["<Tab>k"] = { ";bn<CR>", desc = "Next Tab" },

  },
}
