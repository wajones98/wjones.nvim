-- Automatically center screen when scrolling
vim.keymap.set("n", "<C-u>", "<C-u>zz<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz<CR>", { noremap = true, silent = true })

-- Remove ^M after pasting when running Neovim inside Wsl2
local function remove_annoying_eol_chars()
	vim.api.nvim_input("<Esc>")
	vim.cmd(":%s/\r//g")
	vim.api.nvim_input("i")
end

vim.keymap.set("n", "p", remove_annoying_eol_chars())
vim.keymap.set("n", "P", remove_annoying_eol_chars())
