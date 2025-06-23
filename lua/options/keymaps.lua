vim.g.mapleader = " "

local keymap = vim.keymap.set

keymap("i", "jj", "<ESC>")

-- Nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>")

local function toggle_nvim_tree_focus()
    local api = require("nvim-tree.api")
    local view = require("nvim-tree.view")

    if view.is_visible() then
        local current_buf = vim.api.nvim_get_current_buf()
        local is_nvim_tree_buf = vim.bo[current_buf].filetype == "NvimTree"

        if is_nvim_tree_buf then
            vim.cmd.wincmd("p")
        else
            api.tree.focus()
        end
    end
end

keymap("n", "<leader>b", toggle_nvim_tree_focus, { desc = "Toggle focus between editor and NvimTree" })

keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

keymap("n", "<Tab>", ":bnext<CR>")
keymap("n", "<S-Tab>", ":bprevious<CR>")
