 -- Set space bar as your leader key
vim.g.mapleader = " "

local keymap = vim.keymap.set

-- Clear search highlights with <leader>nh
keymap("n", "<leader>nh", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- =========================================================================
-- PLUGIN KEYMAPS
-- =========================================================================

-- Neo-tree: Toggle the file tree with Space + e
keymap("n", "<leader>e", ":Neotree toggle left<CR>", { desc = "Toggle File Tree" })

-- Telescope
keymap("n", "<leader>ff", function() require('telescope.builtin').find_files() end, { desc = "Find Files (Fuzzy)" })
keymap("n", "<leader>fg", function() require('telescope.builtin').live_grep() end, { desc = "Search text (Live Grep)" })
