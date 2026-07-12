local map = vim.keymap.set

map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to window below" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to window above" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

map("n", "<Leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" })
map("n", "<Leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<Leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Search text" })
map("n", "<Leader>w", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<Leader>c", "<cmd>close<CR>", { desc = "Close current file" })
map("n", "<Leader>q", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })
map("i", "<C-h>", "<Left>", { desc = "Move left in insert mode" })
map("i", "<C-j>", "<Down>", { desc = "Move down in insert mode" })
map("i", "<C-k>", "<Up>", { desc = "Move up in insert mode" })
map("i", "<C-l>", "<Right>", { desc = "Move right in insert mode" })
map("i", "<C-a>", "<Home>", { desc = "Go to beginning of line" })
map("i", "<C-e>", "<End>", { desc = "Go to end of line" })

map("n", "<C-s>", "/", { desc = "Search in file" })
