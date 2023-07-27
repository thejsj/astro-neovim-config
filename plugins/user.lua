return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  {
    "tpope/vim-fugitive",
    name = "vim-fugitive",
    event = "User AstroGitFile",
  },
  {
    "tpope/vim-rhubarb",
    name = "vim-rhubarb",
    event = "User AstroGitFile",
  },
  {
    "tpope/vim-surround",
    name = "vim-surround",
    event = "User AstroGitFile",
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim', 
    name = "telescope-fzf-native",
    build = 'make'
  }
}
