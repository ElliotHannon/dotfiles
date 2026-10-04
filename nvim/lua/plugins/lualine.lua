return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "catppuccin/nvim", -- Guarantees catppuccin is on RTP before lualine loads
  },
  event = "VeryLazy",
  opts = {
    options = {
      theme = "auto",
      component_separators = "",
      section_separators = { left = "", right = "" },
      globalstatus = true,
      disabled_filetypes = { statusline = { "dashboard", "alpha", "neo-tree" } },
    },
    sections = {
      lualine_a = { { "mode", separator = { left = "", right = "" }, right_padding = 2 } },
      lualine_b = { "filename", "branch" },
      lualine_c = { "%=", { "diagnostics", symbols = { error = " ", warn = " ", info = " ", hint = "󰌵 " } } },
      lualine_x = { "encoding", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { { "location", separator = { left = "", right = "" }, left_padding = 2 } },
    },
  },
}
