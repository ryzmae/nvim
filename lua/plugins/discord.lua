return {
  "vyfor/cord.nvim",
  build = ":Cord update",
  event = "VeryLazy",
  opts = {
    display = {
      theme = "default",
      flavor = "dark",
    },
    timestamp = { enabled = true },
    idle = {
      enabled = true,
      timeout = 300000, -- 5 minutes
    },
  },
}
