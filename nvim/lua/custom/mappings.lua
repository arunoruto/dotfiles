local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigatorLeft<CR>",  "window left"},
    ["<C-j>"] = { "<cmd> TmuxNavigatorDown<CR>",  "window down"},
    ["<C-k>"] = { "<cmd> TmuxNavigatorUp<CR>",    "window up"},
    ["<C-l>"] = { "<cmd> TmuxNavigatorRight<CR>", "window right"},
  }
}

return M
