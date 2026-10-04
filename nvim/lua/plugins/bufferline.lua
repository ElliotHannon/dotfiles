return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  opts = {
    options = {
      mode = "buffers",
      separator_style = "slant",
      always_show_bufferline = true,
      show_buffer_close_icons = false,
      show_close_icon = false,
      diagnostics = "nvim_lsp",
      offsets = {
        {
          filetype = "neo-tree",
          text = "󰙅 File Explorer",
          text_align = "left",
          separator = true,
        },
      },
    },
  },
}
