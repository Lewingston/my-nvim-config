
-- Only show relative line numbers in currently active buffer
vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = "*",
    command = "setlocal relativenumber"
})
vim.api.nvim_create_autocmd({ "BufLeave" }, {
    pattern = "*",
    command = "setlocal norelativenumber"
})

-- Highlight copied text for half a second
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank { higroup = "IncSearch", timeout = 500 }
    end
})
