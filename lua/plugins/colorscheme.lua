return {
  "datsfilipe/vesper.nvim",
  lazy = false,
  -- @type string
  opts = {
    transparent = true, -- Enable transparent background
    italics = {
      comments = true, -- Boolean: Italicizes comments
      keywords = false, -- Boolean: Italicizes keywords
      functions = true, -- Boolean: Italicizes functions
      strings = false, -- Boolean: Italicizes strings
      variables = false, -- Boolean: Italicizes variables
    },
  },
}

-- return {
--   "vague-theme/vague.nvim",
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other plugins
--   config = function()
--     require("vague").setup({})
--     vim.cmd("colorscheme vague")
--   end,
-- }
