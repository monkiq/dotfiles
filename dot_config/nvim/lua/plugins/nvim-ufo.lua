return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
  },
  keys = {
    {
      "zR",
      function()
        require("ufo").openAllFolds()
      end,
      desc = "open AllFolds",
    },
    {
      "zM",
      function()
        require("ufo").closeAllFolds()
      end,
      desc = "close AllFolds",
    },
    {
      "zr",
      function()
        require("ufo").openFoldsExceptKinds()
      end,
      desc = "open AllFolds",
    },
    {
      "zm",
      function()
        require("ufo").closeFoldsWith()
      end,
      desc = "close AllFolds",
    },
  },
  config = function()
    vim.opt.foldcolumn = "1" -- '0' is not bad
    vim.opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.opt.foldlevelstart = 99
    vim.opt.foldenable = true

    require("ufo").setup()
  end,
}
