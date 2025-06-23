vim.g.mapleader = " "

local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

-- Set 'jj' to exit insert mode
keymap("i", "jj", "<ESC>")

-- Window navigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Disable arrow keys in normal, insert, and visual modes
keymap({'n', 'i', 'v'}, '<Up>', '<nop>', opts)
keymap({'n', 'i', 'v'}, '<Down>', '<nop>', opts)
keymap({'n', 'i', 'v'}, '<Left>', '<nop>', opts)
keymap({'n', 'i', 'v'}, '<Right>', '<nop>', opts)

-- Visual mode mappings
keymap({"n", "v"}, "H", "^")
keymap({"n", "v"}, "L", "$")
keymap("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
keymap("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Delete without yanking
keymap({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Increment/decrement numbers
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

-- Select all text
keymap("n", "<C-a>", "gg<S-v>G")

-- File operations
keymap("n", "<Leader>w", ":update<Return>", opts)
keymap("n", "<Leader>q", ":quit<Return>", opts)
keymap("n", "<Leader>Q", ":qa<Return>", opts)

-- NvimTree keymaps
keymap("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)
keymap("n", "<Leader>t", ":NvimTreeToggle<Return>", opts)
keymap("n", "<Leader>r", ":NvimTreeRefresh<Return>", opts)
keymap("n", "<Leader>b", "<C-w>w", opts)

-- Buffer navigation
keymap('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
keymap('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer' })

-- Window splitting
keymap("n", "ss", ":split<Return>", opts)
keymap("n", "vv", ":vsplit<Return>", opts)

-- Window movement
keymap("n", "sh", "<C-w>h")
keymap("n", "sk", "<C-w>k")
keymap("n", "sj", "<C-w>j")
keymap("n", "sl", "<C-w>l")

-- Resize window
keymap("n", "<C-S-h>", "<C-w><")
keymap("n", "<C-S-l>", "<C-w>>")
keymap("n", "<C-S-k>", "<C-w>+")
keymap("n", "<C-S-j>", "<C-w>-")

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Diagnostics
keymap("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)