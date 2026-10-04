return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  opts = {
    flavour = "mocha",
    transparent_background = true,
    term_colors = true,
    styles = {
      comments = { "italic" },
      conditionals = { "italic" },
      functions = { "bold" },
      keywords = { "italic", "bold" },
    },
    integrations = {
      neotree = true,
      telescope = { enabled = true, style = "nvchad" },
      treesitter = true,
      which_key = true,
      indent_blankline = { enabled = true },
      native_lsp = { enabled = true },
      trouble = true,
      todo_comments = true,
    },
    custom_highlights = function(colors)
      return {
        -- Match Kitty/Starship line number and cursor colors
        LineNr = { fg = "#4a3e6d" },
        CursorLineNr = { fg = "#00ff9f", bold = true },
        FloatBorder = { fg = "#d946ef", bg = "NONE" },
        NormalFloat = { bg = "NONE" },
        TelescopeBorder = { fg = "#05d9e8", bg = "NONE" },
        TelescopePromptBorder = { fg = "#ff2a6d", bg = "NONE" },
      }
    end,
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}
