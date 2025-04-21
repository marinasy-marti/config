-- ~/.config/nvim/lua/lsp.lua
local lspconfig = require('lspconfig')

-- Setup OmniSharp for C#
lspconfig.omnisharp.setup({
  cmd = { "omnisharp" },  -- Make sure omnisharp is in your PATH
  filetypes = { "cs", "vb" },
  root_dir = lspconfig.util.root_pattern("*.csproj", "*.sln"),
  settings = {
    omnisharp = {
      enableRoslynAnalyzers = true,  -- Enable Roslyn Analyzers (linting)
      organizeImports = true,        -- Auto-organize imports
    },
  },
})

