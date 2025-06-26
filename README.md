# Neovim Configuration

This is a personalized Neovim configuration with a focus on providing a modern and efficient development environment. It includes a curated set of plugins and keymaps to enhance productivity and streamline the coding workflow.

## Plugins

- **[alpha-nvim](https://github.com/goolord/alpha-nvim)**: A fast and fully customizable greeter for Neovim.
- **[mini.pairs](https://github.com/echasnovski/mini.pairs)**: A lightweight plugin for auto-pairing brackets and quotes.
- **[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)**: A stylish and functional buffer line for Neovim.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: A completion plugin for Neovim, providing a rich and extensible completion framework.
- **[rose-pine](https://github.com/rose-pine/neovim)**: A beautiful and modern colorscheme for Neovim.
- **[Comment.nvim](https://github.com/numToStr/Comment.nvim)**: A plugin for easily commenting and uncommenting code.
- **[conform.nvim](https://github.com/stevearc/conform.nvim)**: A plugin for formatting code with external formatters.
- **[mason.nvim](https://github.com/williamboman/mason.nvim)**: A plugin for managing LSP servers, DAP servers, linters, and formatters.
- **[mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)**: A bridge between `mason.nvim` and `nvim-lspconfig`.
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: A collection of configurations for the built-in Neovim LSP client.
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**: A fast and customizable statusline for Neovim.
- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)**: A file explorer for Neovim.
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**: A highly extendable fuzzy finder over lists.
- **[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)**: A plugin for managing terminals in Neovim.
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: A plugin for using Tree-sitter parsers for syntax highlighting, indentation, and more.

### Additional Plugins

- **[andweeb/presence.nvim](https://github.com/andweeb/presence.nvim)**: Discord/Slack presence integration.
- **[APZelos/blamer.nvim](https://github.com/APZelos/blamer.nvim)**: Git blame annotations in the gutter.
- **[folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)**: Highlight and search for TODO/FIXME/NOTE comments.
- **[HiPhish/rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim)**: Rainbow parentheses and delimiters.
- **[lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Git signs in the sign column.
- **[lukas-reineke/headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)**: Enhanced markdown headlines and UI.
- **[mikavilpas/yazi.nvim](https://github.com/mikavilpas/yazi.nvim)**: Modern TUI file manager integration.
- **[nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)**: Utility functions for plugins.
- **[romainl/vim-cool](https://github.com/romainl/vim-cool)**: Improved search highlighting.
- **[stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)**: UI select/prompt enhancements.
- **[tpope/vim-commentary](https://github.com/tpope/vim-commentary)**: Easy commenting in normal and visual mode.
- **[DaikyXendo/nvim-material-icon](https://github.com/DaikyXendo/nvim-material-icon)**: Material design file icons.
- **[gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim)**: Command line completion popup.
- **[j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim)**: LSP progress UI.

## Keymaps

| Keymap           | Description                                             |
| ---------------- | ------------------------------------------------------- |
| `jj`             | Exit insert mode                                        |
| `<C-h>`          | Navigate to the window on the left                      |
| `<C-j>`          | Navigate to the window below                            |
| `<C-k>`          | Navigate to the window above                            |
| `<C-l>`          | Navigate to the window on the right                     |
| `H`              | Move to the beginning of the line                       |
| `L`              | Move to the end of the line                             |
| `<A-j>`          | Move the current line down                              |
| `<A-k>`          | Move the current line up                                |
| `<A-j>` (visual) | Move the selected lines down                            |
| `<A-k>` (visual) | Move the selected lines up                              |
| `<leader>d`      | Delete without yanking                                  |
| `+`              | Increment number                                        |
| `-`              | Decrement number                                        |
| `<C-a>`          | Select all text                                         |
| `<Leader>w`      | Save the current file                                   |
| `<Leader>q`      | Quit the current window                                 |
| `<Leader>Q`      | Quit all windows                                        |
| `<Leader>f`      | Find a file using NvimTree                              |
| `<Leader>t`      | Toggle NvimTree                                         |
| `<Leader>r`      | Refresh NvimTree                                        |
| `<Leader>b`      | Switch to the other window                              |
| `<Tab>`          | Go to the next buffer                                   |
| `<S-Tab>`        | Go to the previous buffer                               |
| `ss`             | Split the window horizontally                           |
| `vv`             | Split the window vertically                             |
| `sh`             | Move to the window on the left                          |
| `sk`             | Move to the window above                                |
| `sj`             | Move to the window below                                |
| `sl`             | Move to the window on the right                         |
| `<C-S-h>`        | Decrease the width of the window                        |
| `K`              | Show documentation for the symbol under the cursor      |
| `gd`             | Go to the definition of the symbol under the cursor     |
| `gr`             | Go to the references of the symbol under the cursor     |
| `gi`             | Go to the implementation of the symbol under the cursor |
| `<leader>ca`     | Show code actions for the current line                  |
| `<leader>t`      | Toggle the floating terminal                            |
| `<leader>ff`     | Find files using Telescope                              |
| `<leader>fg`     | Live grep using Telescope                               |
| `<leader>fb`     | Find buffers using Telescope                            |
| `<leader>fh`     | Find help tags using Telescope                          |

## Keymaps (additional)

| Keymap      | Description                                       |
| ----------- | ------------------------------------------------- |
| `<leader>n` | Open Yazi file manager in current directory       |
| `<leader>N` | Open Yazi file manager in root directory          |
| `<leader>c` | Comment/uncomment lines (vim-commentary)          |
| `<leader>t` | Toggle NvimTree / Toggle floating terminal / Yazi |
