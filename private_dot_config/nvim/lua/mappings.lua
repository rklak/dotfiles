require "nvchad.mappings"
local harpoon = require "harpoon"
harpoon:setup()

local map = vim.keymap.set
local nomap = vim.keymap.del

-- zz
map("n", "n", "nzzzv", { desc = "Keep next search matches in the middle of the window" })
map("n", "N", "Nzzzv", { desc = "Keep previous search matches in the middle of the window" })

-- Copy relative path
map(
  "n",
  "<leader>cp",
  "<cmd> let @+ = expand('%:.') . ':' . line('.')<CR><BAR><cmd> echo \"Copied: \" . @+ <CR>",
  { desc = "Copy relative file path" }
)

-- NvimTree
map("n", "<leader>l", "<cmd> NvimTreeToggle<CR>", { desc = "Toggle nvimtree" })
map("n", "<leader>o", "<cmd> NvimTreeFindFile!<CR>zz", { desc = "Find file in nvimtree" })

-- Zen mode
map("n", "<leader>z", "<cmd> ZenMode <CR>", { desc = "Toggle Zen Mode" })

-- Telescop
map("n", "<leader>fr", "<cmd> Telescope lsp_references <CR>", { desc = "Telescope LSP references" })
map("n", "<leader>fe", "<cmd> Telescope resume <CR>", { desc = "Telescope resume" })

-- Diagnostic
map("n", "<leader>x", function()
  vim.diagnostic.open_float { border = "rounded" }
end, { desc = "LSP Floating diagnostic" })

-- Harpoon
map("n", "<leader>1", function()
  harpoon:list():select(1)
end)
map("n", "<leader>2", function()
  harpoon:list():select(2)
end)
map("n", "<leader>3", function()
  harpoon:list():select(3)
end)
map("n", "<leader>4", function()
  harpoon:list():select(4)
end)
map("n", "<leader>5", function()
  harpoon:list():select(5)
end)
map("n", "<leader>6", function()
  harpoon:list():select(6)
end)

map("n", "<leader>5", function()
  harpoon:list():select(5)
end)
map("n", "<leader>6", function()
  harpoon:list():select(6)
end)

map("n", "<leader>7", function()
  harpoon:list():prev()
end, { desc = "Harpoon prev" })

map("n", "<leader>8", function()
  harpoon:list():next()
end, { desc = "Harpoon next" })

map("n", "<leader>q", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon quick menu" })

map("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Harpoon add" })
-- Rebind because of not using tabufine
nomap("n", "<tab>")
nomap("n", "<S-tab>")
