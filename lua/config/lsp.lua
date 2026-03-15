
vim.lsp.config['cpp'] = {
    cmd = { 'C:/msys64/mingw64/bin/clangd.exe',
            '--compile-commands-dir=./build/',
            '--background-index'},
    filetypes = { 'cpp', 'hpp', 'c', 'h' },
    root_markers = { { 'CMakeLists.txe' } }
}

vim.lsp.enable('cpp')

vim.lsp.config['rust'] = {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_markers = { 'Cargo.toml', '.git' },
    settings = {['rust-analyzer'] = {diagnostics = { enable = false }}},
}

vim.lsp.enable('rust')

vim.keymap.set('n', 'grd', function()
    vim.lsp.buf.definition()
end)
