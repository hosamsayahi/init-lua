require("neovim.set")
require("neovim.lazy")
require("neovim.remap")

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

vim.cmd("autocmd BufRead,BufNewFile *.hbs set filetype=html")

-- trouble
-- harpoon
-- fugitive
