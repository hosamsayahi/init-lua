return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon")

		-- harpoon:setup()

		-- vim.keymap.set("n", "<leader>e", function()
		-- 	harpoon.ui:toggle_quick_menu(harpoon:list())
		-- end)
	end,
}
