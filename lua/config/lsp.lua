
vim.lsp.config['cpp'] = {
    cmd = { 'C:/msys64/mingw64/bin/clangd.exe',
            '--compile-commands-dir=./build/',
            '--background-index'},
    filetypes = { 'cpp', 'hpp', 'c', 'h' },
    root_markers = { { 'CMakeLists.txe' } }
}

vim.lsp.enable('cpp')

vim.keymap.set('n', 'grd', function()
    vim.lsp.buf.definition()
end)
