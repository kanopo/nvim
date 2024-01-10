local M = {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
  local harpoon = require("harpoon").setup()

  vim.keymap.set("n", "<leader>a", function ()
    harpoon:list():append()
  end, { desc = "Harpoon add", noremap = true, silent = true })

  vim.keymap.set("n", "<leader>h", function ()
    harpoon.ui:toggle_quick_menu(harpoon:list())
  end, { desc = "Harpoon menu", noremap = true, silent = true })
end

return M
