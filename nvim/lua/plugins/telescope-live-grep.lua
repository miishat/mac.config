return {
  "nvim-telescope/telescope-live-grep-args.nvim",
  lazy = true,
  config = function()
    require("telescope").load_extension("live_grep_args")
  end,
}
