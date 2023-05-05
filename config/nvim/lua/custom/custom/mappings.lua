local M = {}

M.global = {
  n = {
    ["<leader>aq"] = {"<cmd> bufdo q <CR>", "quit all buffers"},
  },
}

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

M.litee = {
  plugin = true,
  n = {
    ["<leader>lt"] = {
      "<cmd> LTPanel <CR>",
      "Toggle Litee view"
    },
    ["<leader>cho"] = {
      function ()
        vim.lsp.buf.outgoing_calls()
      end,
      "show outgoing calls"
    },
    ["<leader>chi"] = {
      function ()
        vim.lsp.buf.incoming_calls()
      end,
      "show incoming calls"
    },
    ["<leader>chc"] = {
      "<cmd> LTCloseCalltree <CR>",
      "hide call hierarchie"
    },
    ["<leader>sto"] = {
      function ()
        vim.lsp.buf.document_symbol()
      end,
      "show symbols"
    },
    ["<leader>stc"] = {
      "<cmd> LTCloseSymboltree <CR>",
      "hide symbols"
    },

  },
}

require("core.utils").load_mappings("searchreplace")
require("core.utils").load_mappings("litee")

return M
