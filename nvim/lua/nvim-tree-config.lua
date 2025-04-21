-- ~/.config/nvim/lua/nvim-tree-config.lua
require("nvim-tree").setup({
  view = {
    width = 30,
    relativenumber = true,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

