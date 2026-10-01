return {
  {
    "mbbill/undotree",
    config = function()
      vim.keymap.set("n", "<leader>e", "<cmd>UndotreeToggle<CR>")
    end,
  },
}
