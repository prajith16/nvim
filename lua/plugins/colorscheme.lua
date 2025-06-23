return  {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                variant = "main",      -- auto, main, moon, or dawn
                dark_variant = "main", -- main, moon, or dawn
                dim_inactive_windows = false,
                styles = {
                    bold = true,
                    italic = false,
                    transparency = true,
                },
                highlight_groups = {
                    ColorColumn = { bg = "#1C1C21" },
                    Normal = { bg = "none" },                      -- Main background remains transparent
                    Pmenu = { bg = "", fg = "#e0def4" },           -- Completion menu background
                    PmenuSel = { bg = "#4a465d", fg = "#f8f5f2" }, -- Highlighted completion item
                    PmenuSbar = { bg = "#191724" },                -- Scrollbar background
                    PmenuThumb = { bg = "#9ccfd8" },               -- Scrollbar thumb
                },
                enable = {
                    terminal = false,
                    legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
                    migrations = true,         -- Handle deprecated options automatically
                },

            })

            -- Set the colorscheme
            vim.cmd("colorscheme rose-pine")
        end,
 }