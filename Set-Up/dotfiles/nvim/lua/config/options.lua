-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.wrap = true

-- Set options for C and C++ files
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"c", "cpp", "java" },
  callback = function()
    -- Set tab to 4 spaces and use tabs instead of spaces
    vim.opt_local.tabstop = 4        -- Number of spaces tabs count for
    vim.opt_local.shiftwidth = 4     -- Number of spaces to use for autoindent
    vim.opt_local.expandtab = false  -- Use tabs instead of spaces
  end,
})
