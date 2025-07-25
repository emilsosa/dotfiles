vim.g.mapleader = " "

-- Exit insert mode with jk
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vim.keymap.set("n", "<leader>H", function()
-- 	local ht = require("hardtime")
--
-- 	if ht.is_plugin_enabled then
-- 		ht.disable()
-- 		vim.notify("Hardtime disabled 😥", vim.log.levels.INFO, { title = "Hardtime" })
-- 	else
-- 		ht.enable()
-- 		vim.notify("Hardtime enabled 😎", vim.log.levels.INFO, { title = "Hardtime" })
-- 	end
-- end, { desc = "Toggle Hardtime" })

vim.keymap.set("n", "<leader>ie", ":Emoji<CR>", { desc = "Insert Emoji" })

-- Accept suggestion
vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})

-- Accept next word
-- vim.keymap.set("i", "<C-L>", "copilot#AcceptWord()", {
-- 	expr = true,
-- 	replace_keycodes = false,
-- })
