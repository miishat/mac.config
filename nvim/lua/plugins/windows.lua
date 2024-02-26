return {
  {
    "anuvyklack/windows.nvim",
    lazy = true,
    dependencies = {
      "anuvyklack/middleclass",
    },
    config = function()
      require("windows").setup()
    end,
  },
}
