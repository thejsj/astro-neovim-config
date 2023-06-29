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
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<Tab>j"] = { ";bp<CR>", desc = "Previous Tab" },
    ["<Tab>k"] = { ";bn<CR>", desc = "Next Tab" },
  },
}
