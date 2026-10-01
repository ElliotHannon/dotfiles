return 
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use main branch for latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
}

-- In visual mode: S ) to wrap selected text with ) in line wise visual mode it's gS
