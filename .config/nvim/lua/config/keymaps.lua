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
