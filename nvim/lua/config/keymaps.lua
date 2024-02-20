-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

---------------------
-- General Keymaps
---------------------

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
-- #TODO: fix this keybinding conflict
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- tab management
-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- telescope
keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
-- keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fgc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader><leader><leader>", "<cmd>Telescope live_grep_args<cr>") -- live grep with arguments option enabled
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fd", "<cmd>Telescope file_browser<CR>") -- opens telescope-file-browser
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fs", "<cmd>Telescope luasnip<cr>") -- list available snippets for the file type
keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>") -- list recent files
keymap.set("n", "<leader>fgb", "<cmd>Telescope current_buffer_fuzzy_find<cr>") -- fuzzy finding inside the current buffer
keymap.set("n", "<leader>ft", "<cmd>Telescope tags<cr>") -- list tags of the current directory
keymap.set("n", "<leader>fct", "<cmd>Telescope current_buffer_tags<cr>") -- list tags inside the current buffer
keymap.set("n", "<leader>frg", "<cmd>Telescope registers<cr>") -- list vim registers
keymap.set("n", "<leader>fj", "<cmd>Telescope jumplist<cr>") -- list jumplist
keymap.set("n", "<leader>fcm", "<cmd>Telescope commands<cr>") -- list available vim commands
keymap.set("n", "<leader>fsh", "<cmd>Telescope search_history<cr>") -- list recent search history
keymap.set("n", "<leader>fcs", "<cmd>Telescope colorscheme<cr>") -- list colorschemes
keymap.set("n", "<leader>fkm", "<cmd>Telescope Keymaps<cr>") -- list keymaps
keymap.set("n", "<leader>fhl", "<cmd>Telescope highlights<cr>") -- list highlights
keymap.set("n", "<leader>ftc", "<cmd>Telescope builtin<cr>") -- list telescope commands
keymap.set("n", "<leader>fts", "<cmd>Telescope treesitter<cr>") -- list treesitter elements
keymap.set("n", "<leader>fr", "<cmd>Telescope resume<cr>") -- last telescope command
--keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>") -- list undo tree
keymap.set("n", "<leader>ffc", "<cmd>Telescope frecency<cr>") -- list undo tree
-- keymap.set("n", "<leader>fga", "<cmd>Telescope live_grep_args<cr>") -- live grep with arguments option enabled

-- git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout)
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout)
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview
keymap.set("n", "<leader>gst", "<cmd>Telescope git_stash<cr>") -- list stash items in the current repository
keymap.set("n", "<leader>gbl", "<cmd>Git blame<cr>") -- list stash items in the current repository
keymap.set("n", "<leader>ds", "<cmd>Gdiffsplit<cr>") -- shows diff in a split window
keymap.set("n", "<leader>dv", "<cmd>DiffviewOpen<cr>") -- run diffview
keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<cr>") -- close diffview

-- windows
keymap.set("n", "<C-w>z", "<cmd>WindowsMaximize<cr>")
keymap.set("n", "<C-w>_", "<cmd>WindowsMaximizeVertically<cr>")
keymap.set("n", "<C-w>|", "<cmd>WindowsMaximizeHorizontally<cr>")
keymap.set("n", "<C-w>=", "<cmd>WindowsEqualize<cr>")

-- set Option+i to Esc
keymap.set("i", "ˆ", "<Esc>")

-- bufferline keymaps
keymap.set("n", "≤", "<Cmd>BufferLineCyclePrev<CR>")
keymap.set("n", "≥", "<Cmd>BufferLineCycleNext<CR>")
keymap.set("n", "ç", "<Cmd>bdelete<CR>")

-- oil
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

---- barbar
---- Move to previous/next
--keymap.set("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
--keymap.set("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
---- Re-order to previous/next
--keymap.set("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
--keymap.set("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
---- Goto buffer in position...
--keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
--keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
--keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
--keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
--keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
--keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
--keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
--keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
--keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
--keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
---- Pin/unpin buffer
--keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
---- Close buffer
--keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
---- Magic buffer-picking mode
--keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
---- Sort automatically by...
--keymap.set("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
--keymap.set("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
--keymap.set("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
--keymap.set("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
