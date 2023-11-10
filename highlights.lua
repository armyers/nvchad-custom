-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    fg = "#4974a5",
    italic = true,
  },

  WinSeparator = {
    fg = "#4974a5",
  },

  NvimTreeWinSeparator = {
    fg = "#4974a5",
  },

  CursorLine = {
    bg = "#333666",
    underline = true,
  },

  NvimTreeCursorLine = {
    bg = "#333666",
  },

  TelescopeBorder = {
    fg = "#888888",
  },

  IndentBlanklineChar = {
    fg = "#555555",
  },

  IndentBlanklineContextChar = {
    fg = "#aaaaaa",
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
