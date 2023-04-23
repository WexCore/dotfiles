local colors = require("catppuccin.palettes").get_palette()
require("catppuccin").setup({
	flavour = "mocha",
	color_overrides = {
		mocha = {
			base = "#141521",
		},
	},
	custom_highlights = {
		Comment = { fg = colors.overlay1 },
		LineNr = { fg = colors.overlay1 },
	},
	integrations = {
		cmp = true,
		dap = {
			enabled = true,
			enable_ui = true,
		},
		fidget = true,
		gitsigns = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = true,
		},
		markdown = true,
		mason = true,
		native_lsp = {
			enabled = true,
		},
		neogit = true,
		neotree = true,
		notify = true,
		nvimtree = true,
		symbols_outline = true,
		telescope = true,
		treesitter = true,
		treesitter_context = true,
		which_key = true,
		ts_rainbow = true,
		barbecue = {
			dim_dirname = true,
		},
	},
})

local colorscheme = "catppuccin"


local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	return
end

-- Transparent

-- vim.api.nvim_create_autocmd("ColorScheme", {
-- 	pattern = "*",
-- 	callback = function()
-- 		local hl_groups = {
-- 			"Normal",
-- 			"SignColumn",
-- 			"NormalNC",
-- 			"TelescopeBorder",
-- 			"NvimTreeNormal",
-- 			"EndOfBuffer",
-- 			"MsgArea",
-- 		}
-- 		for _, name in ipairs(hl_groups) do
-- 			vim.api.nvim_set_hl(0, '%s', { fg = none, bg = none })
-- 		end
-- 	end,
-- })
--
-- vim.opt.fillchars = "eob: "

-- setup must be called before loading
vim.api.nvim_set_hl(0, 'Normal', { fg = none, bg = none })
vim.api.nvim_set_hl(0, 'SignColumn', { fg = none, bg = none })
vim.api.nvim_set_hl(0, 'NormalNC', { fg = none, bg = none })
vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg = none, bg = none })
vim.api.nvim_set_hl(0, 'NvimTreeNormal', { fg = none, bg = none })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = none, bg = none })
vim.api.nvim_set_hl(0, 'MsgArea', { fg = none, bg = none })

vim.api.nvim_set_hl(0, 'IndentBlanklineIndent1', { fg = '#1f1f1f', bg = '#1f1f1f' })
