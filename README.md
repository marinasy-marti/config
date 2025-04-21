# My Linux Configs

This repository contains my personal Linux configurations. You can choose what part you’re interested in!

## Table of Contents

- [Neovim Configuration](#neovim-configuration)
- [Scripts](#scripts)

<details>
  <summary>Neovim Configuration</summary>

  ## Neovim Setup

  1. Clone the repository:
     ```bash
     git clone https://github.com/marinasy-marti/config.git
     cd config
     ```

  2. Link Neovim configuration:
     ```bash
     mkdir -p ~/.config/nvim
     ln -s $PWD/neovim/init.lua ~/.config/nvim/init.lua
     ```

  3. Install Plugins with **lazy.nvim**

     First, install `lazy.nvim` (only once):
     ```bash
     git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim
     ```

     Then in your `init.lua`, load the plugin manager and declare your plugins like this:

     ```lua
     -- Load lazy.nvim
     local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
     if not vim.loop.fs_stat(lazypath) then
       vim.fn.system({
         "git",
         "clone",
         "--filter=blob:none",
         "https://github.com/folke/lazy.nvim.git",
         "--branch=stable",
         lazypath,
       })
     end
     vim.opt.rtp:prepend(lazypath)

     -- Setup your plugins
     require("lazy").setup({
       { "nvim-tree/nvim-tree.lua" },         -- File tree sidebar
       { "nvim-lualine/lualine.nvim" },       -- Status line
       { "nvim-treesitter/nvim-treesitter" }, -- Better syntax highlighting
       { "neovim/nvim-lspconfig" },           -- LSP support
     })
     ```

     💬 *Just trust me(up to you 😄) — copy and paste this to get started quickly.  
     You can comment out plugins you don’t need or add your own.*

     #### 🚀 Plugins will auto-install!

     The first time you open Neovim with this config, plugins will install automatically — no need to run anything.

</details>

<details>
  <summary>Scripts</summary>

  ## Scripts

  Automation scripts for setting up the environment are located in the `scripts/` folder.

</details>

---

### License

This repository is open-source and licensed under the MIT License.
