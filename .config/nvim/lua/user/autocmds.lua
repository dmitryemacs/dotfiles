local augroup = vim.api.nvim_create_augroup("UserAutocmds", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})
