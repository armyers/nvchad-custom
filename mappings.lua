---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["|"] = { "<cmd>vsplit<cr>", "Vertical Split" },
    ["_"] = { "<cmd>split<cr>", "Horizontal Split" },

    -- these only work on Macos iTerm2 when 'Settings->Profiles->Keys->Left Option Key->Esc+'
    ["<A-h>"] = { "<C-w><", "decrease window width" },
    ["<A-l>"] = { "<C-w>>", "increase window width" },
    ["<A-k>"] = { "<C-w>+", "increase window height" },
    ["<A-j>"] = { "<C-w>-", "decrease window height" },
    ["<A-=>"] = { "<C-w>=", "equalize window sizes" },

    ["<leader>I"] = { "<cmd> IndentBlanklineToggle <CR>", "Toggle Indent Blankline" },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

-- binding for Markdown Preview
M.mdpreview = {
  n = {
    ["<leader>mp"] = { "<cmd> MarkdownPreview<CR>", "Open Preview"},
    ["<leader>mc"] = { "<cmd> MarkdownPreviewStop<CR>", "Close Preview"},
    },
}


return M
