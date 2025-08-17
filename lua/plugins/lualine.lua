return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      component_separators = "",
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
      lualine_c = {},
      lualine_y = {
        { "location", padding = { left = 0, right = 1 } },
      },
      lualine_z = {
        {
          function()
            return " " .. os.date("%R")
          end,
          separator = { right = "" },
        },
      },
    },
  },
}
