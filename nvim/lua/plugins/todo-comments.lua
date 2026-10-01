return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup({
        -- Your configuration here or leave empty for defaults
        signs = true, -- Show icons in gutter
        sign_priority = 8, -- Priority of signs
        keywords = {
          TODO = { icon = " ", color = "info" },
          FIXME = { icon = " ", color = "warning" },
          HACK = { icon = " ", color = "warning" },
          WARNING = { icon = " ", color = "warning" },
          PERF = { icon = " ", color = "info" },
          NOTE = { icon = " ", color = "hint" },
          TEST = { icon = "⏲ ", color = "test" },
        },
        highlight = {
          multiline = true, -- Enable multiline comments highlighting
          multiline_pattern = "^.", -- Pattern for multiline comments
          multiline_context = 10, -- Extra lines for multiline comments
        },
      })
      
      -- Keymaps
      vim.keymap.set("n", "]t", function() require("todo-comments").jump_next() end, { desc = "Next todo comment" })
      vim.keymap.set("n", "[t", function() require("todo-comments").jump_prev() end, { desc = "Previous todo comment" })
      vim.keymap.set("n", "<leader>st", function() require("todo-comments").telescope() end, { desc = "Search todo comments" })
    end,
  },
}
