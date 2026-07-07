let lspOpts = #{
            \autoHighlightDiags: v:true,
            \noNewlineInCompletion: v:true,
            \completionTextEdit: v:true,
            \vsnipSupport: v:true,
            \}

autocmd User LspSetup call LspOptionsSet(lspOpts)

let lspServers = [#{
            \name: 'clang',
            \filetype: ['c', 'cpp'],
            \path: '/usr/bin/clangd',
            \args: ['--background-index']
            \}]

autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>

inoremap <expr> <Tab> pumvisible() 
    \ ? "\<C-n>"
    \ : "\<Tab>"

inoremap <expr> <S-Tab> pumvisible() 
    \ ? "\<C-p>" 
    \ : "\<BS>"

inoremap <expr> <CR> pumvisible()
    \ ? "\<C-y>"
    \ : "\<CR>"

inoremap <expr> <Esc> pumvisible()
    \ ? "\<C-e>\<Esc>"
    \ : "\<Esc>"

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
    \   diagSignErrorText: 'E',
    \   diagSignWarningText: 'W',
    \   diagSignInfoText: 'I',
    \   diagSignHintText: 'H',
    \ })

