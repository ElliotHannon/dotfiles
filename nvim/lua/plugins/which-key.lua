return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300 -- Popup shows after 300ms pause
  end,
  opts = {
    preset = "modern", -- "modern", "classic", or "helix"
    win = {
      border = "rounded",
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Show Buffer Keymaps",
    },
  },
  config = function(_, opts)
    local wk = require("which-key")

    -- 1. Apply your `opts` configuration
    wk.setup(opts)

    -- 2. Register keybind group labels
    wk.add({
      { "<leader>f", group = "󰍉 Find / Telescope" },
      { "<leader>e", group = "󰙅 Explorer" },
      { "<leader>b", group = "󰓩 Buffers" },
      { "<leader>c", group = "󰅩 Code / LSP" },
      { "<leader>t", group = "󰄞 Trouble / Diagnostics" },
    })
  end,
}
