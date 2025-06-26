-- Miscellaneous plugins for extra features and UI enhancements
return {
  -- Discord/Slack presence integration
  {
	"andweeb/presence.nvim",
	event = "VeryLazy",
	opts = {
	  neovim_image_text = "Neovim",
	  presence_log_level = "error",
	  presence_editing_text = "Editing « %s »",
	  presence_file_explorer_text = "Browsing files",
	  presence_reading_text = "Reading  « %s »",
	  presence_workspace_text = "Working on « %s »",
	},
  },
  -- Git blame annotations
  {
	"APZelos/blamer.nvim",
	config = function()
	  vim.g.blamer_enabled = 1
	end,
  },
  -- Highlight TODO, FIXME, etc. in code
  {
	"folke/todo-comments.nvim",
	opts = {},
  },
  -- Rainbow parentheses
  "HiPhish/rainbow-delimiters.nvim",
  -- Git signs in the gutter
  {
	"lewis6991/gitsigns.nvim",
	opts = {
	  signs = {
		add = { text = "+" },
		change = { text = "~" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
	  },
	},
  },
  -- Markdown headlines and improved markdown UI
  {
	"lukas-reineke/headlines.nvim",
	dependencies = "nvim-treesitter/nvim-treesitter",
	opts = {},
  },
  -- Modern TUI file manager integration
  {
	"mikavilpas/yazi.nvim",
	event = "VeryLazy",
	dependencies = {
	  "folke/snacks.nvim",
	},
	keys = {
	  { "<Leader>n", ":Yazi cwd<CR>", silent = true },
	  { "<Leader>N", ":Yazi<CR>", silent = true },
	},
	opts = {
	  open_for_directories = true,
	},
	init = function()
	  vim.g.loaded_netrwPlugin = 1
	end,
  },
  -- Utility library for plugins
  { "nvim-lua/plenary.nvim", lazy = true },
  -- Improved search highlighting
  "romainl/vim-cool",
  -- UI select/prompt enhancements
  "stevearc/dressing.nvim",
  -- Easy commenting
  {
	"tpope/vim-commentary",
	event = "VeryLazy",
	keys = {
	  { "<Leader>c", ":Commentary<CR>", mode = { "n", "v" }, silent = true },
	},
  },
}