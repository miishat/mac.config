return {

  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      -- telescope color config (catppuccin)
      local colors = require("catppuccin.palettes").get_palette()
      local TelescopeColor = {
        TelescopeMatching = { fg = colors.red, bold = true },
        TelescopeSelection = { fg = colors.yellow, bg = colors.surface0, bold = true },
        TelescopeSelectionCaret = { fg = colors.yellow, bg = colors.surface0, bold = true },

        TelescopePromptPrefix = { bg = colors.surface0 },
        TelescopePromptNormal = { bg = colors.crust },
        -- TelescopePromptNormal = { bg = colors.surface0 },
        TelescopeResultsNormal = { bg = colors.mantle },
        TelescopePreviewNormal = { bg = colors.crust }, -- original was mantle
        TelescopePromptBorder = { bg = colors.crust, fg = colors.crust },
        -- TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
        TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
        TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust }, -- original was mantle
        TelescopePromptTitle = { bg = colors.lavender, fg = colors.mantle, bold = true },
        TelescopeResultsTitle = { fg = colors.mantle },
        TelescopePreviewTitle = { bg = colors.sapphire, fg = colors.mantle, bold = true },
        -- TelescopeMatching = { fg = colors.flamingo },
        -- TelescopePromptTitle = { bg = colors.pink , fg = colors.mantle },
        -- TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
      }

      for hl, col in pairs(TelescopeColor) do
        vim.api.nvim_set_hl(0, hl, col)
      end

      -- import telescope actions safely
      local actions_setup, actions = pcall(require, "telescope.actions")
      if not actions_setup then
        return
      end

      return {
        -- configure custom mappings
        defaults = {
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "-L",
          },
          extensions = {
            fzf = {
              fuzzy = true, -- false will only do exact matching
              override_generic_sorter = true, -- override the generic sorter
              override_file_sorter = true, -- override the file sorter
              case_mode = "smart_case", -- or "ignore_case" or "respect_case"
              -- the default case_mode is "smart_case"
            },
          },
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous, -- move to prev result
              ["<C-j>"] = actions.move_selection_next, -- move to next result
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
              ["<C-l>"] = actions.preview_scrolling_right, -- scroll right on the preview window
              ["<C-h>"] = actions.preview_scrolling_left, -- scroll left on the result window
              ["<C-g>"] = actions.results_scrolling_right, -- scroll right on the result window
              ["<C-f>"] = actions.results_scrolling_left, -- scroll left on the preview window
              ["<C-e>"] = actions.close,
            },
          },
        },
      }
    end,
  },
}
