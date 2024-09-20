-- return {
-- 	"projekt0n/github-nvim-theme",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("github-theme").setup({
-- 			options = { transparent = true },
-- 		})
-- 		vim.cmd("colorscheme github_dark_dimmed")
-- 	end,
-- }
return {
	"lunarvim/darkplus.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme darkplus")
	end,
}
