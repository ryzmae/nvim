-- return {
--   { "vinitkumar/oscura-vim" },
--   {
--     "LazyVim/LazyVim",
--     lazy = false, -- Load during startup
--     opts = {
--       colorscheme = "oscura",
--     },
--   },
-- }

return {
  { "Mofiqul/vscode.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}

-- return {
--   {
--     "mcchrish/zenbones.nvim",
--     dependencies = { "rktjmp/lush.nvim" },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "zenbones",
--     },
--   },
-- }

-- return {
--   "folke/tokyonight.nvim",
--   lazy = true,
--   opts = { style = "moon" },
-- }

-- return {
--   {
--     "tiagovla/tokyodark.nvim",
--     opts = {
--       -- custom options here
--     },
--     config = function(_, opts)
--       require("tokyodark").setup(opts) -- calling setup is optional
--       vim.cmd([[colorscheme tokyodark]])
--     end,
--   },
-- }

-- -- ~/.config/nvim/lua/plugins/material.lua
-- return {
--   {
--     "marko-cerovac/material.nvim",
--     -- load immediately so it wins over LazyVim's default cs
--     lazy = false,
--     priority = 1000,
--     -- set your style *before* setup()
--     init = function()
--       -- or "deep ocean", "palenight", "oceanic", "lighter", "darker"
--       vim.g.material_style = "darker"
--     end,
--     opts = {
--       -- you no longer need `style = "darker"` here
--       lualine_style = "stealth",
--       contrast = {
--         terminal = false,
--         sidebars = false,
--         floats = false,
--         cursor_line = false,
--         lsp_virtual_text = false,
--         non_current_windows = false,
--         filetypes = {},
--       },
--       styles = {
--         comments = { italic = true },
--         keywords = {},
--         functions = {},
--         strings = {},
--         variables = {},
--         operators = {},
--         types = {},
--       },
--       plugins = {
--         "dap",
--         "gitsigns",
--         "nvim-cmp",
--         "nvim-tree",
--         "telescope",
--         "which-key",
--       },
--       disable = {
--         colored_cursor = false,
--         borders = false,
--         background = false,
--         term_colors = false,
--         eob_lines = false,
--       },
--       high_visibility = {
--         lighter = false,
--         darker = false,
--       },
--       async_loading = true,
--       custom_colors = nil,
--       custom_highlights = {},
--     },
--     config = function(_, opts)
--       -- now that vim.g.material_style is set, do the setup
--       require("material").setup(opts)
--       vim.cmd("colorscheme material")
--     end,
--   },
-- }
--
-- return {
--   {
--     "craftzdog/solarized-osaka.nvim",
--     priority = 1000,
--     opts = {
--       transparent = true,
--     },
--     config = function()
--       vim.cmd.colorscheme("solarized-osaka")
--     end,
--   },
-- }
