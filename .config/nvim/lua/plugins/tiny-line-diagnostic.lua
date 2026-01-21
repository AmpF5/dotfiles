return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "VeryLazy",
	priority = 1000,
	config = function()
		require("tiny-inline-diagnostic").setup()

		-- Disable all other inline diagnostics
		vim.diagnostic.config({
			virtual_text = false,
			virtual_lines = false,
			signs = true,
			underline = true,
			update_in_insert = false,
			severity_sort = true,
		})

		-- Ensure it stays disabled even after LSP attaches
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function()
				vim.diagnostic.config({
					virtual_text = false,
					virtual_lines = false,
				})
			end,
		})
	end,
}
