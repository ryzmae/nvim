return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-telescope/telescope-file-browser.nvim" },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      extensions = {
        file_browser = {
          hidden = true, -- show .env and other dotfiles
          respect_gitignore = true,
        },
      },
    })
  end,
}
