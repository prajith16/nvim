-- tooling plugins
return {
	
	-- linting
	{
		"mfussenegger/nvim-lint",
		config = function()
			local lint = require "lint"

			lint.linters_by_ft = {
				astro = { "eslint_d" },
				javascript = { "eslint_d" },
				svelte = { "eslint_d" },
				typescript = { "eslint_d" },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost" }, {
				callback = function()
					local ok = pcall(function()
						lint.try_lint()
					end)
					if not ok then
						vim.notify("Error in BufWritePost linting", vim.log.levels.ERROR)
					end
				end,
			})
		end,
	},
}