
-- Only show relative line numbers in currently active buffer
vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = "*",
    callback = function(args)
        if vim.bo[args.buf].buftype == "" then -- Only show line number if buffer is actualy a file
            vim.api.nvim_command(":setlocal relativenumber")
        end
    end
})

vim.api.nvim_create_autocmd({ "BufLeave" }, {
    pattern = "*",
    callback = function(args)
        if vim.bo[args.buf].buftype == "" then
            vim.api.nvim_command(":setlocal norelativenumber")
        end
    end
})

-- Highlight copied text for half a second
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank { higroup = "IncSearch", timeout = 500 }
    end
})
