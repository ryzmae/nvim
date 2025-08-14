return {
  {
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
  },
}
