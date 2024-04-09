vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

vim.opt.number = true
-- TODO: Toggle keybinding for relative numbers
vim.opt.relativenumber = true
vim.opt.signcolumn = "auto"

vim.opt.mouse = "a"

vim.opt.showmode = false

vim.opt.clipboard = "unnamedplus"

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
