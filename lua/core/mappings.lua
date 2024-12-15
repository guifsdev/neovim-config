vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<leader>h", vim.diagnostic.open_float, { desc = "Open diagnostic hover window" })
vim.keymap.set(
	"n",
	"<leader>k",
	"<cmd>lua vim.lsp.buf.hover()<cr>",
	{ desc = "Open floating window. Jump to floating if open" }
)
--  Jump to definition in a split window
vim.keymap.set("n", "gv", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", { silent = true })
vim.keymap.set("n", "gh", "<cmd>split | lua vim.lsp.buf.definition()<CR>", { silent = true })

-- vim.keymap.set("n", "-", vim.cmd.Ex)

-- Open Netrw in a vertical split
-- vim.keymap.set("n", "<leader>e", ":Lex<CR>", { noremap = true, silent = true, desc = "Open Netrw" })

vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>", { desc = "Open Telescope file browser" })

vim.keymap.set(
	"n",
	"<space>bfb",
	":Telescope file_browser path=%:p:h<CR>",
	{ desc = "Open Telescope file browser within the directory of the current buffer" }
)

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save the current file" })

-- Make the last word typed UPPERCASE
vim.keymap.set("i", "<C-F>", "<Esc>gUiw`]a")
