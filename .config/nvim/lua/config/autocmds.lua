-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function set_hover_hl()
	vim.api.nvim_set_hl(0, "HoverNormal", { bg = "#181825", fg = "#cdd6f4" })
	vim.api.nvim_set_hl(0, "HoverFloatBorder", { bg = "#181825", fg = "#585b70" })
end
set_hover_hl()

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = set_hover_hl,
})
