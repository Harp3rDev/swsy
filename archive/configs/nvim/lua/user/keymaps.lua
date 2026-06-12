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

-- Telescope: Safe configuration that won't crash if not installed yet
local status_ok, builtin = pcall(require, "telescope.builtin")
if status_ok then
    keymap("n", "<leader>ff", builtin.find_files, { desc = "Find Files (Fuzzy)" })
    keymap("n", "<leader>fg", builtin.live_grep, { desc = "Search text (Live Grep)" })
else
    -- Fallback message if you press the keys before it finishes installing
    keymap("n", "<leader>ff", ":echo 'Telescope not installed yet!'<CR>")
    keymap("n", "<leader>fg", ":echo 'Telescope not installed yet!'<CR>")
end
