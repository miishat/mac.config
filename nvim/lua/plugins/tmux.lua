return {
  {
    "aserowy/tmux.nvim",
    lazy = true,
    config = function()
      local tmux = require("tmux")

      tmux.setup()
    end,
  },

  {
    "vimpostor/vim-tpipeline",
    enabled = false,
    event = "VeryLazy",
    init = function()
      vim.g.tpipeline_autoembed = 0
      vim.g.tpipeline_statusline = ""
    end,
    config = function()
      vim.cmd.hi({ "link", "StatusLine", "WinSeparator" })
      vim.g.tpipeline_statusline = ""
      vim.o.laststatus = 0
      vim.o.fillchars = "stl:─,stlnc:─"
    end,
    cond = function()
      return vim.env.TMUX ~= nil
    end,
  },
}
