if vim.g.vscode then
	local vscode = require("vscode")

	-- 1. Space + Space: Search Files (LazyVim style)
	vim.keymap.set("n", "<leader><leader>", function()
		vscode.action("binocular.searchFile")
	end)

	-- 2. Space + s + g: Live Grep (Search Content)
	vim.keymap.set("n", "<leader>sg", function()
		vscode.action("binocular.searchFileContent")
	end)

	-- 4. Space + s + d: Search Directory
	vim.keymap.set("n", "<leader>fd", function()
		vscode.action("binocular.searchDirectory")
	end)
else
	local preview = require("goto-preview")

	vim.keymap.set("n", "gpd", preview.goto_preview_definition, { desc = "Preview definition" })

	vim.keymap.set("n", "gpt", preview.goto_preview_type_definition, { desc = "Preview type definition" })

	vim.keymap.set("n", "gpi", preview.goto_preview_implementation, { desc = "Preview implementation" })

	vim.keymap.set("n", "gpD", preview.goto_preview_declaration, { desc = "Preview declaration" })

	vim.keymap.set("n", "gpP", preview.close_all_win, { desc = "Close all preview windows" })

	vim.keymap.set("n", "gpr", preview.goto_preview_references, { desc = "Preview references" })

	vim.keymap.set("n", "gp", "<Nop>", { noremap = true, silent = true })

	vim.keymap.set("n", "gP", "<Nop>", { noremap = true, silent = true })

	vim.keymap.set("v", "gp", "<Nop>", { noremap = true, silent = true })

	vim.keymap.set("v", "gP", "<Nop>", { noremap = true, silent = true })
end
