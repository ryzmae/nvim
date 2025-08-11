return {
  "laytan/cloak.nvim",
  config = function()
    require("cloak").setup({
      enabled = true,
      cloak_character = "*",
      highlight_group = "Comment", -- or "Conceal"
      patterns = {
        {
          file_pattern = { ".env*", "*/.env*" },
          cloak_pattern = "=.+", -- everything after '='
        },
      },
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>tc", "<cmd>CloakToggle<cr>", { desc = "Toggle Cloak (hide/show secrets)" })
  end,
}
