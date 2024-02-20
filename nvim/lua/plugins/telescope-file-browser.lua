return {
  "nvim-telescope/telescope-file-browser.nvim",
  lazy = true,
  config = function()
    require("telescope").load_extension("file_browser")
  end,
}
