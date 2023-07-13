---@type ChadrcConfig 
local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  }
}

M.ui = {theme = 'onedark'}

-- realtive line numbers
vim.wo.relativenumber = true

-- swapfiles are annoying
vim.opt.swapfile = false

M.plugins = "custom.plugins"
return M
