---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

-- disable the mouse
-- same as '<cmd>set mouse='
vim.o.mouse = ""

-- disable copying everything to the clipboard
-- same as '<cmd>set clipboard='
vim.o.clipboard = ""

vim.api.nvim_create_autocmd("WinEnter", {
  callback = function() vim.o.cursorline = true end
})

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function() vim.o.cursorline = true end
})

vim.api.nvim_create_autocmd("BufWinEnter", {
  callback = function() vim.o.cursorline = true end
})

vim.api.nvim_create_autocmd("WinLeave", {
  callback = function() vim.o.cursorline = false end
})

vim.api.nvim_create_autocmd("BufLeave", {
  callback = function() vim.o.cursorline = false end
})

vim.api.nvim_create_autocmd("BufWinLeave", {
  callback = function() vim.o.cursorline = false end
})

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function() vim.highlight.on_yank() end
})

M.ui = {
  theme = "tokyonight",
  theme_toggle = { "tokyonight", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
