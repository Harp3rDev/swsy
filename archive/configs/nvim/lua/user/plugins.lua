local plugins = {
    -- =========================================================================
    -- THEMES SYSTEM (Add/Remove as you like)
    -- =========================================================================
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "folke/tokyonight.nvim", priority = 1000 },
    { "rebelot/kanagawa.nvim", priority = 1000 },
    { "sainnhe/everforest", priority = 1000 },
    { "scottmckendry/cyberdream.nvim", priority = 1000 },

    -- =========================================================================
    -- EFFICIENCY PLUGINS
    -- =========================================================================
    -- 1. Neo-tree (The File Tree)
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({ window = { width = 30 } })
        end
    },

    -- 2. Telescope (The Ultimate Fuzzy Finder)
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- 3. nvim-autopairs (Auto-close brackets, quotes, etc.)
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true
    },

    -- 4. Comment.nvim (Toggle comments with gcc or gc)
    {
        "numToStr/Comment.nvim",
        config = true
    },

    -- 5. Gitsigns (Git indicators in the left gutter)
    {
        "lewis6991/gitsigns.nvim",
        config = true
    },

    -- 6. Lualine (Beautiful, themed status bar at the bottom)
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = true
    }
}

-- Automatic bootstrap of lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins) 
