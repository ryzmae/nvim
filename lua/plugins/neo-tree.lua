return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- For file icons
      "MunifTanjim/nui.nvim", -- For UI components
    },
    opts = {
      default_component_configs = {
        icon = {
          -- Rounded/circular folder icons
          folder_closed = "", -- Rounded closed folder
          folder_open = "", -- Rounded open folder
          folder_empty = "", -- Same as closed, looks round
          folder_empty_open = "",
          default = "", -- Rounded/circular file icon

          -- Per-filetype (rounded/circular where possible)
          file = {
            ["ts"] = "", -- TypeScript (rounded)
            ["tsx"] = "", -- TSX (same as TS, rounded)
            ["js"] = "", -- JavaScript (slightly rounded)
            ["jsx"] = "", -- JSX (React, rounded)
            ["py"] = "", -- Python (rounded snake)
            ["rs"] = "", -- Rust (cog, rounded)
            ["go"] = "", -- Go (gopher, rounded)
            ["json"] = "󰘦", -- JSON (rounded, nf-md-braces_box)
            ["env"] = "󰸞", -- .env (rounded, nf-md-leaf_circle)
          },
        },
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        position = "right",
        mappings = {
          ["J"] = function(state)
            local tree = state.tree
            local node = tree:get_node()
            local siblings = tree:get_nodes(node:get_parent_id())
            local renderer = require("neo-tree.ui.renderer")
            renderer.focus_node(state, siblings[#siblings]:get_id())
          end,
          ["K"] = function(state)
            local tree = state.tree
            local node = tree:get_node()
            local siblings = tree:get_nodes(node:get_parent_id())
            local renderer = require("neo-tree.ui.renderer")
            renderer.focus_node(state, siblings[1]:get_id())
          end,
        },
      },
      sort_function = function(a, b)
        local function is_in_notes_directory(path)
          return string.match(path, "/notes/") or string.match(path, "^notes/")
        end
        local function get_mod_time(path)
          local attributes = vim.loop.fs_stat(path)
          return attributes and attributes.mtime.sec or 0
        end
        if a.type ~= b.type then
          return a.type == "directory"
        end
        local a_in_notes = is_in_notes_directory(a.path)
        local b_in_notes = is_in_notes_directory(b.path)
        if a_in_notes and b_in_notes and a.type ~= "directory" and b.type ~= "directory" then
          return get_mod_time(a.path) > get_mod_time(b.path)
        end
        local a_name = a.path:match("^.+/(.+)$") or a.path
        local b_name = b.path:match("^.+/(.+)$") or b.path
        return a_name < b_name
      end,
    },
  },
}
