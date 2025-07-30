local M = {}

function M.ui_replace()
  vim.ui.input({ prompt = "Find → " }, function(find)
    if not find or find == "" then
      return
    end
    vim.ui.input({ prompt = "Replace → " }, function(repl)
      if repl == nil then
        return
      end
      local esc_find = vim.fn.escape(find, "/\\")
      local esc_repl = vim.fn.escape(repl, "/\\")
      vim.cmd(string.format("%%s/%s/%s/g", esc_find, esc_repl))
    end)
  end)
end

function M.setup()
  vim.keymap.set("n", "<leader>r", M.ui_replace, { desc = " Find & Replace (UI)" })
end

return M
