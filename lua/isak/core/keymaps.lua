vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- movement
keymap.set("n", "ø", "{", { desc = "Move one paragraph up" })
keymap.set("n", "æ", "}", { desc = "Move one paragraph down" })
keymap.set("n", "bp", "<CMD>bp<CR>", { desc = "Move to the previous buffer" })
keymap.set("n", "bn", "<CMD>bn<CR>", { desc = "Move to the next buffer" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make windows equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Move one window up" })

keymap.set("n", "<leader>uu", ":source %<CR>", { desc = "update" })

--tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "+ 1 " })
keymap.set("n", "<leader>-", "<C-x>", { desc = "- 1 " })
