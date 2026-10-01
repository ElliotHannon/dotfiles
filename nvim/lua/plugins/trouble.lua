return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = "Trouble",
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Diagnostics (Trouble)" },
    { "<leader>xw", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Workspace Diagnostics (Trouble)" },
    { "<leader>xd", "<cmd>Trouble diagnostics toggle<CR>", desc = "Document Diagnostics (Trouble)" },
    { "<leader>xq", "<cmd>Trouble quickfix toggle<CR>", desc = "Quickfix List (Trouble)" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Loclist (Trouble)" },
    { "gR", "<cmd>Trouble lsp toggle<CR>", desc = "LSP References (Trouble)" },
  },
  config = function()
    require("trouble").setup({})
  end,
}
