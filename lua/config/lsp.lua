
vim.lsp.config['cpp'] = {
    cmd = { 'C:/msys64/mingw64/bin/clangd.exe',
            '--compile-commands-dir=./build/' },
    filetypes = { 'cpp', 'hpp', 'c', 'h' },
    root_markers = { { 'CMakeLists.txe' } }
}

vim.lsp.enable('cpp')
