return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find Text (Grep)" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Open Buffers" },
    { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Search Keymaps / Shortcuts" },
    { "<leader>?",  "<cmd>Telescope keymaps<cr>", desc = "Search Keymaps / Shortcuts" },
  },
  opts = {
    defaults = {
      file_ignore_patterns = { "%.aux", "%.log", "%.out", "%.toc", "%.fls", "%.fdb_latexmk" },
    },
  },
}
