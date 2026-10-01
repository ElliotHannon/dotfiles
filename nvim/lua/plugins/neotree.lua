return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,
          custom = { "%.aux$", "%.log$", "%.out$", "%.toc$", "%.fls$", "%.fdb_latexmk$" },
        },
      })
      
      vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<CR>")
    end,
  },
}
