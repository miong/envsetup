local M = {}

M.searchreplace = {
  plugin = true,
  n = {
    ["<leader>rs"] = { "<cmd> SearchReplaceSingleBufferSelections <CR>", "selction list" },
    ["<leader>ro"] = { "<cmd> SearchReplaceSingleBufferOpen <CR>", "open" },
    ["<leader>rw"] = { "<cmd> SearchReplaceSingleBufferCWord <CR>", "word" },
    ["<leader>rW"] = { "<cmd> SearchReplaceSingleBufferCWORD <CR>", "WORD" },
    ["<leader>re"] = { "<cmd> SearchReplaceSingleBufferCExpr <CR>", "expr" },
    ["<leader>rf"] = { "<cmd> SearchReplaceSingleBufferCFile <CR>", "file" },

    ["<leader>rbs"] = { "<cmd> SearchReplaceMultiBufferSelections <CR>", "multi selction list" },
    ["<leader>rbo"] = { "<cmd> SearchReplaceMultiBufferOpen <CR>", "multi open" },
    ["<leader>rbw"] = { "<cmd> SearchReplaceMultiBufferCWord <CR>", "multi word" },
    ["<leader>rbW"] = { "<cmd> SearchReplaceMultiBufferCWORD <CR>", "multi WORD" },
    ["<leader>rbe"] = { "<cmd> SearchReplaceMultiBufferCExpr <CR>", "multi expr" },
    ["<leader>rbf"] = { "<cmd> SearchReplaceMultiBufferCFile <CR>", "multi file" },
  },
  v = {
    ["C-A-r"] = { "<cmd> SearchReplaceSingleBufferVisualSelection <CR>", "replace selection" },
    ["C-A-s"] = { "<cmd> SearchReplaceWithinVisualSelection <CR>", "replace with selection" },
    ["C-A-b"] = { "<cmd> SearchReplaceWithinVisualSelectionCWord <CR>", "replace block" },
  },
}

require("core.utils").load_mappings("searchreplace")

return M
