-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
