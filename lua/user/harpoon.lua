local M = {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
  local harpoon = require("harpoon").setup()

  -- Mappings
  vim.keymap.set("n", "<leader>a", function()
    harpoon:list():append()
  end)
  vim.keymap.set("n", "<leader>h", function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
  end)
end

return M
-- vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
