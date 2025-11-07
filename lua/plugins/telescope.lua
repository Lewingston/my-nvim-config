
return {

    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()

        require('telescope').setup {
            defaults = {
                vimgrep_arguments = {
                    'rg',
                    '--color=never',
                    '--ho-heading',
                    '--with-filename',
                    '--line-number',
                    '--column',
                    '--smart-case',
                    '--hidden',
                    '--follow'
                }
            }
        }

        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', function()
            builtin.find_files {
                no_ignore = false,
                follow = true
            }
        end)

        vim.keymap.set("n", "<leader>fc", function()
            builtin.find_files {
                cwd = vim.fn.stdpath("config")
            }
        end)

        vim.keymap.set('n', '<leader>fs', function()
            builtin.lsp_document_symbols {
                symbol_width = 120
            }
        end)

        vim.keymap.set('n', '<leader>fr', function()
            builtin.lsp_references {
                fname_width = 80
            }
        end)

        vim.keymap.set('n', '<leader>fd', function()
            builtin.diagnostics {
                bufnr = 0
            }
        end)

        vim.keymap.set("n", "<leader>fb", builtin.buffers)

        vim.keymap.set("n", "<leader>F", builtin.live_grep)

        vim.keymap.set("n", "<leader>fF", builtin.grep_string)

        vim.keymap.set("n", "<leader>fi", builtin.current_buffer_fuzzy_find)

    end
}
