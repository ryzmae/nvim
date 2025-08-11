-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true })

-- Delete buffer keymap for replacement
vim.keymap.del("n", "]b")

vim.keymap.set("n", "gbn", ":bnext<CR>", { desc = "Go to next Buffer" })
vim.keymap.set("n", "gbp", ":bprevious<CR>", { desc = "Go to previous Buffer" })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Show buffers like in Telescope
vim.keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })

-- Switch out of terminal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Terminal normal mode" })

-- Delete all buffers
vim.keymap.set("n", "<leader>bd", function()
  local bufs = vim.api.nvim_list_bufs()
  for _, buf in ipairs(bufs) do
    if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_option(buf, "buflisted") then
      vim.api.nvim_buf_delete(buf, { force = true })
    end
  end
end, { desc = "Delete all buffers" })

local diagnostic = vim.diagnostic

-- Next diagnostic (any severity)
vim.keymap.set("n", "<leader>dn", diagnostic.goto_next, { desc = "Next Diagnostic" })

-- Previous diagnostic (any severity)
vim.keymap.set("n", "<leader>dp", diagnostic.goto_prev, { desc = "Prev Diagnostic" })

-- Keybinds for LSP
-- vim.keymap.set({ "i", "n", "v", "c" }, "<Up>", "<NOP>", { silent = true })
-- vim.keymap.set({ "i", "n", "v", "c" }, "<Down>", "<NOP>", { silent = true })
-- vim.keymap.set({ "i", "n", "v", "c" }, "<Left>", "<NOP>", { silent = true })
-- vim.keymap.set({ "i", "n", "v", "c" }, "<Right>", "<NOP>", { silent = true })
