return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.set_end_of_line"] = true,
      },
    },
    presets = {
      bottom_search = false,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = true,
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}
