
-- Helper function for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opt)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Easier split size adjustment
map("n", "<C-Left>", ":vertical resize -3<CR>")
map("n", "<C-Right>", ":vertical resize +3<CR>")
map("n", "<C-Up>", ":horizontal resize +3<CR>")
map("n", "<C-Down>", ":horizontal resize -3<CR>")

-- Center cursor on screen when scorlling for halp a screen
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Open netrw on the right
-- map("n", "<leader>e", ":Lex<CR>")

-- Nove lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv") -- Move current line down
map("v", "K", ":m '>-2<CR>gv=gv") -- Move current line up
