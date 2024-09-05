require "nvchad.mappings"

local map = vim.keymap.set
local nomap = vim.keymap.del

map("n", "n", "nzzzv", { desc = "Keep next search matches in the middle of the window" })
map("n", "N", "Nzzzv", { desc = "Keep previous search matches in the middle of the window" })

map(
  "n",
  "<leader>cp",
  "<cmd> let @+ = expand('%:.') . ':' . line('.')<CR><BAR><cmd> echo \"Copied: \" . @+ <CR>",
  { desc = "Copy relative file path" }
)

map("n", "<leader>l", "<cmd> NvimTreeToggle<CR>", { desc = "Toggle nvimtree" })
map("n", "<leader>o", "<cmd> NvimTreeFindFile!<CR>zz", { desc = "Find file in nvimtree" })

map("n", "<leader>z", "<cmd> ZenMode <CR>", { desc = "Toggle Zen Mode" })

map("n", "<leader>fr", "<cmd> Telescope lsp_references <CR>", { desc = "Telescope LSP references" })
map("n", "<leader>fe", "<cmd> Telescope resume <CR>", { desc = "Telescope resume" })

map("n", "<leader>di", function()
  vim.diagnostic.open_float { border = "rounded" }
end, { desc = "LSP Floating diagnostic" })

map("n", "<leader>a", function()
  require("harpoon.mark").add_file()
end, { desc = "Harpoon add file" })

map("n", "<leader>q", function()
  require("harpoon.ui").toggle_quick_menu()
end, { desc = "Harpoon quick menu" })

nomap("n", "<tab>")
nomap("n", "<S-tab>")
