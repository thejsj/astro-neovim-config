return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("neo-tree").setup({
      event_handlers = {
        {
          event = "file_opened",
          handler = function()
            vim.cmd 'Neotree close'
          end
        },
      }
    })
  end,
}
