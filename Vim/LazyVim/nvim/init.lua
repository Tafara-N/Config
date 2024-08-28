-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Make cursor a vertical bar in the terminal after leaving LazyVim
vim.api.nvim_create_autocmd('VimLeave', {
    callback = function()
        -- Restore the cursor to an I-Beam (vertical bar) in the terminal
        vim.cmd('set guicursor=a:ver25')
    end,
})

-- Ensure that LazyVim uses the .editorconfig file, file needs to be present in the project root directory
-- vim.opt.editorconfig = true
