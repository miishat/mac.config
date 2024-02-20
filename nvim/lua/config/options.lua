-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.loader.enable()

local opt = vim.opt -- for conciseness

-- Number of screen lines to keep above and below the cursor
opt.scrolloff = 8

--
opt.textwidth = 0 -- disable line breaking

-- line numbers
-- opt.relativenumber = true -- show relative line numbers  -- already exists in lazyvim options.lua
-- opt.number = true -- shows absolute line number on cursor line (when relative number is on)  -- already exists in lazyvim options.lua
-- opt.numberwidth = 5
-- opt.signcolumn = 'yes:2'
-- opt.statuscolumn = "%s %l %r  "

-- tabs & indentation
-- opt.tabstop = 2 -- 2 spaces for tabs (prettier default)  -- already exists in lazyvim options.lua
-- opt.shiftwidth = 2 -- 2 spaces for indent width  -- already exists in lazyvim options.lua
-- opt.expandtab = true -- expand tab to spaces  -- already exists in lazyvim options.lua
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = true -- enable line wrapping

-- search settings
-- opt.ignorecase = true -- ignore case when searching  -- already exists in lazyvim options.lua
-- opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive  -- already exists in lazyvim options.lua

-- cursor
-- opt.cursorline = true -- highlight the current cursor line
-- opt.cursorcolumn = true -- highlight the current cursor column
opt.guicursor = "n-v-c-sm:block,ci-ve:ver25,r-cr-o:hor20,i:block-blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"

-- appearance
-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
-- opt.termguicolors = true  -- already exists in lazyvim options.lua
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
-- opt.signcolumn = "yes" -- show sign column so that text doesn't shift  -- already exists in lazyvim options.lua

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
-- opt.clipboard:append("unnamedplus") -- use system clipboard as default register  -- already exists in lazyvim options.lua

-- split windows
-- opt.splitright = true -- split vertical window to the right  -- already exists in lazyvim options.lua
-- opt.splitbelow = true -- split horizontal window to the bottom  -- already exists in lazyvim options.lua

-- history
opt.history = 50

opt.iskeyword:append("-") -- consider string-string as whole word

-- filetype (verilog)
-- vim.cmd("autocmd BufNewFile,BufRead *.vh setfiletype verilog")

-- cursorline on only the current pane
vim.cmd([[
  augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
    au FileType TelescopePrompt* setlocal nocursorline
  augroup end
]])
