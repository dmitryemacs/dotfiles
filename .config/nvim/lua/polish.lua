--if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
-- Настройки отступов
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.cursorcolumn = true

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })

-- Moving in insert mode
vim.keymap.set('i', '<C-h>', '<Left>', {noremap = true})
vim.keymap.set('i', '<C-j>', '<Down>', {noremap = true})
vim.keymap.set('i', '<C-k>', '<Up>', {noremap = true})
vim.keymap.set('i', '<C-l>', '<Right>', {noremap = true})

-- moving end line
vim.keymap.set('i', '<C-e>', '<End>', {noremap = true})
