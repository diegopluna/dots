return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "slant",
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "left",
					separator = true,
				},
			},
		},
	},
	config = function()
		-- Autocommand to hide bufferline when only one buffer is open
		vim.api.nvim_create_augroup("HideBufferLine", { clear = true })
		vim.api.nvim_create_autocmd("BufEnter", {
			group = "HideBufferLine",
			callback = function()
				if #vim.fn.getbufinfo({ buflisted = 1 }) == 1 then
					vim.opt.showtabline = 0
				else
					vim.opt.showtabline = 1
				end
			end,
		})
	end,
}
