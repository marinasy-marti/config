local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Switch from tree window to file window
vim.keymap.set("n", "<leader>t", "<C-w>w", { noremap = true, silent = true })  -- Cycle windows
vim.keymap.set("n", "<leader>f", "<C-w>w", { noremap = true, silent = true })  -- Same action as above, switch focus

-- Optional: move to the file tree window
vim.keymap.set("n", "<leader>e", "<C-w>h", { noremap = true, silent = true })

-- LSP keymaps
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })  -- Go to definition
vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })  -- Show hover info
vim.keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = true })  -- Rename symbol
vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })  -- Code actions
vim.keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", { noremap = true, silent = true })  -- Format code

