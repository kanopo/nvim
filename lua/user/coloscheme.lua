local M = {
  "luisiacc/gruvbox-baby",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  commit = "436f73d6a45777eadedbd2f842f766d093266eb3",
}

function M.config()
  vim.cmd.colorscheme "gruvbox-baby"
end

return M
