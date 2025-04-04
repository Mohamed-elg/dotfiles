return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Add to harpoon" })
		vim.keymap.set("n", "<leader>h", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle harpoon" })

		-- vim.keymap.set("n", "<leader>1", function()
		-- 	harpoon:list():select(1)
		-- end, { desc = "Jump to harpoon 1" })
		-- vim.keymap.set("n", "<leader>2", function()
		-- 	harpoon:list():select(2)
		-- end, { desc = "Jump to harpoon 2" })
		-- vim.keymap.set("n", "<leader>3", function()
		-- 	harpoon:list():select(3)
		-- end, { desc = "Jump to harpoon 3" })
		-- vim.keymap.set("n", "<leader>4", function()
		-- 	harpoon:list():select(4)
		-- end, { desc = "Jump to harpoon 4" })
		-- vim.keymap.set("n", "<leader>5", function()
		-- 	harpoon:list():select(5)
		-- end, { desc = "Jump to harpoon 5" })

		-- Toggle previous & next buffers stored within Harpoon list
		-- vim.keymap.set("n", "<leader>j", function()
		-- 	harpoon:list():prev()
		-- end)
		-- vim.keymap.set("n", "<leader>k", function()
		-- 	harpoon:list():next()
		-- end)
	end,
}
