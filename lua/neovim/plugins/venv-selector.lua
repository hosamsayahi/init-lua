return {
	"linux-cultist/venv-selector.nvim",
	dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
	opts = {},
	config = function()
		require("venv-selector").setup({
      stay_on_this_version = true,
			changed_venv_hooks = { require("venv-selector").hooks.pyright },
		})
		vim.keymap.set("n", "<leader>vs", ":VenvSelect<CR>", {})
		vim.keymap.set("n", "<leader>vc", ":VenvSelectCached<CR>", {})
	end,
}
