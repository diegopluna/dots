return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		lualine.setup({
			options = {
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				theme = "catppuccin",
				globalstatus = true,
				icons_enabled = true,
			},
			sections = {
				lualine_a = { "", "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
				lualine_x = { "filetype", "encoding", "fileformat" },
			},
		})
	end,
}
