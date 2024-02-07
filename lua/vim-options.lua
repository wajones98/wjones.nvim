vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.o.clipboard = "unnamedplus"

-- Indent wrapped lines
vim.o.breakindent = true

-- Show autocomplete menu but require manual selection
vim.o.completeopt = "menuone,noselect"

-- Enable 24-bit colors
vim.o.termguicolors = true
