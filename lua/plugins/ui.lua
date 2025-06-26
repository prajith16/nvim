-- UI and icon plugins for enhanced visuals and command line completion
return {
  -- Material design file icons
  {
	"DaikyXendo/nvim-material-icon",
	opts = {
	  override_by_extension = {
		["gleam"] = {
		  icon = "",
		  color = "#ffaff3",
		  name = "Gleam",
		},
	  },
	},
  },
  -- Wilder: command line completion popup
  {
	"gelguy/wilder.nvim",
	dependencies = {
	  "DaikyXendo/nvim-material-icon",
	},
	opts = {
	  modes = { ":", "/", "?" },
	},
	config = function(_, opts)
	  local wilder = require "wilder"
	  wilder.setup(opts)
	  wilder.set_option(
		"renderer",
		wilder.popupmenu_renderer(wilder.popupmenu_border_theme {
		  highlighter = wilder.basic_highlighter(),
		  highlights = {
			accent = "FloatBorder",
			border = "FloatBorder",
		  },
		  left = { " ", wilder.popupmenu_devicons() },
		  right = { " ", wilder.popupmenu_scrollbar() },
		  border = "rounded",
		})
	  )
	  -- Fix winborder for command line popup
	  vim.api.nvim_create_autocmd("CmdlineEnter", {
		callback = function()
		  local ok = pcall(function()
			vim.opt_local.winborder = "none"
			vim.api.nvim_create_autocmd("CmdlineLeave", {
			  once = true,
			  callback = function()
				pcall(function()
				  vim.opt_local.winborder = "rounded"
				end)
			  end,
			})
		  end)
		  if not ok then
			vim.notify("Error in CmdlineEnter/Leave autocommand", vim.log.levels.ERROR)
		  end
		end,
	  })
	end,
  },
  -- Fidget: LSP progress UI
  {
	"j-hui/fidget.nvim",
	opts = {
	  notification = { window = { winblend = 0 } },
	},
  },
}