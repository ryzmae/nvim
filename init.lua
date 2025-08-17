if vim.g.neovide then
  vim.g.neovide_scale_factor = 1.2
  vim.api.nvim_command("set autochdir")
  vim.api.nvim_command("cd /users/juwen/dev/")
end

-- hide the cmdline until you actually enter “:” mode
vim.o.cmdheight = 0
-- use a single global statusline
vim.o.laststatus = 3

require("config.lazy")
require("ryzm.find_replace").setup()

vim.cmd.colorscheme("catppuccin-mocha")
vim.lsp.inlay_hint.enable(true)
