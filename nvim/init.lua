-- Basic setup
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.tabstop = 2        -- Size of a hard tab
vim.opt.shiftwidth = 2     -- Size of auto-indent
vim.opt.softtabstop = 2    -- Spaces when you press Tab
vim.opt.expandtab = true   -- Convert tabs to spaces

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins (start with just VimTeX)
require("lazy").setup({
{
  "lervag/vimtex",
  lazy = false,
  config = function()
    -- Use Okular as PDF viewer
    vim.g.vimtex_view_method = "general"
    vim.g.vimtex_view_general_viewer = "okular"
    vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"
    
    -- Enable inverse search (PDF -> Neovim)
    vim.g.vimtex_compiler_progname = "nvr"
    
    -- Don't open quickfix window automatically
    vim.g.vimtex_quickfix_mode = 0
    
    -- Dynamic aux_dir based on current file name
    vim.g.vimtex_compiler_latexmk = {
      aux_dir = function()
        local name = vim.fn.expand("%:t:r")  -- Get current file name without extension
        return "build/" .. name              -- e.g., build/chapter1, build/document
      end,
      options = {
        "-pdf",
        "-interaction=stopmode",  -- Stop on errors
        "-synctex=1",
        "-file-line-error",
      },
    }
  end,
},

  {import = "plugins" },
})

-- Basic options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

print("Neovim ready with VimTeX!")
