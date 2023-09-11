return {
  "crusj/hierarchy-tree-go.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("hierarchy-tree-go").setup()
  end,
  keys = {
    {
      "<leader>csi",
      function()
        require("hierarchy-tree-go").incoming()
      end,
      desc = "hierarchy incoming",
    },
    {
      "<leader>cso",
      function()
        require("hierarchy-tree-go").outgoing()
      end,
      desc = "hierarchy outgoing",
    },
    {
      "<leader>cco",
      function()
        require("hierarchy-tree-go").open()
      end,
      desc = "hierarchy open",
    },
    {
      "<leader>ccc",
      function()
        require("hierarchy-tree-go").close()
      end,
      desc = "hierarchy close",
    },
    {
      "<leader>csu",
      function()
        require("hierarchy-tree-go").focus()
      end,
      desc = "hierarchy focus",
    },
  },
  opts = {
    keymap = {
      -- bufkeymap
      expand = "o", -- expand or collapse hierarchy
      jump = "<CR>", -- jump
      move = "<space><space>",
    },
  },
}
