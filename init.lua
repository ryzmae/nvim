if vim.g.neovide then
  vim.g.neovide_scale_factor = 1.2
  vim.api.nvim_command("set autochdir")
  vim.api.nvim_command("cd /users/juwen/dev/")
end

-- hide the cmdline until you actually enter “:” mode
vim.o.cmdheight = 0
-- use a single global statusline
vim.o.laststatus = 3

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("plugins.lsp")
require("plugins.todo-comments")
require("plugins.lsp")
require("plugins.neo-tree")
require("plugins.comment")
require("plugins.snacks")
require("plugins.rustaceanvim")
require("plugins.notify")
require("plugins.mini-pairs")
require("plugins.surround")
require("plugins.ts-comments")
require("plugins.lualine")
require("plugins.colorscheme")
require("plugins.session")
require("plugins.neoscroll")
require("plugins.diagnostic")
