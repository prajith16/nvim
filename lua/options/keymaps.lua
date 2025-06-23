vim.g.mapleader = " "

local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

keymap("i", "jj", "<ESC>")

-- Nvim-tree
-- keymap("n", "<leader>e", ":NvimTreeToggle<CR>")

-- local function toggle_nvim_tree_focus()
--     local api = require("nvim-tree.api")
--     local view = require("nvim-tree.view")

--     if view.is_visible() then
--         local current_buf = vim.api.nvim_get_current_buf()
--         local is_nvim_tree_buf = vim.bo[current_buf].filetype == "NvimTree"

--         if is_nvim_tree_buf then
--             vim.cmd.wincmd("p")
--         else
--             api.tree.focus()
--         end
--     end
-- end

-- keymap("n", "<leader>b", toggle_nvim_tree_focus, { desc = "Toggle focus between editor and NvimTree" })

keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")




-- Normal mode
    keymap('n', '<Up>', '<nop>', opts)
    keymap('n', '<Down>', '<nop>', opts)
    keymap('n', '<Left>', '<nop>', opts)
    keymap('n', '<Right>', '<nop>', opts)

-- Insert mode
    keymap('i', '<Up>', '<nop>', opts)
    keymap('i', '<Down>', '<nop>', opts)
    keymap('i', '<Left>', '<nop>', opts)
    keymap('i', '<Right>', '<nop>', opts)

-- Visual mode
    keymap('v', '<Up>', '<nop>', opts)
    keymap('v', '<Down>', '<nop>', opts)
    keymap('v', '<Left>', '<nop>', opts)
    keymap('v', '<Right>', '<nop>', opts)

keymap({"n", "v"}, "H", "^")
keymap({"n", "v"}, "L", "$")
keymap("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
keymap("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Delete without yanking
keymap({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

-- Increment/decrement
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")


-- Select all
keymap("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap("n", "<Leader>w", ":update<Return>", opts)
keymap("n", "<Leader>q", ":quit<Return>", opts)
keymap("n", "<Leader>Q", ":qa<Return>", opts)

-- File explorer with NvimTree
keymap("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)
keymap("n", "<Leader>t", ":NvimTreeToggle<Return>", opts)
keymap("n", "<Leader>r", ":NvimTreeRefresh<Return>", opts)
keymap("n", "<Leader>b", "<C-w>w", opts)

keymap('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
keymap('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer' })


-- Split window
keymap("n", "ss", ":split<Return>", opts)
keymap("n", "vv", ":vsplit<Return>", opts)

-- -- Move window
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