return {
  {
    "aserowy/tmux.nvim",
    config = function()
      local tmux = require("tmux")

      tmux.setup()
    end,
  },

  {
    "vimpostor/vim-tpipeline",
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

-- This integrates with the same package used on TPM package manager on .tmux.conf
-- return {
--   {
--     "aserowy/tmux.nvim",
--     config = function()
--       local tmux = require("tmux")
--
--       tmux.setup()
--     end,
--   },
--   {
--     "vimpostor/vim-tpipeline",
--     config = function()
--       -- Disable the statusline when entering vim
--       vim.g.tpipeline_autoembed = 0
--       -- Restore the previous statusline after quitting vim
--       -- vim.g.tpipeline_restore = 1
--       -- Clear duplicate statusline when there is split windows
--       vim.g.tpipeline_clearstl = 1
--     end,
--   },
-- }
