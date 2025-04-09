return {
  'ibhagwan/fzf-lua',
  event = 'VeryLazy',
  opts = {
    files = { previewer = 'telescope' },
    buffers = { no_term_buffers = true },
  },
  keys = {
    { '<leader>,', ':FzfLua files<cr>', desc = 'Find files' },
    { '<leader>ca', ':FzfLua lsp_code_actions<cr>', desc = 'Code actions' },
    { '<leader>bb', ':FzfLua buffers<cr>', desc = 'Find buffers' },
    { '<leader>ds', ':FzfLua lsp_document_symbols<cr>', desc = 'Document symbols' },
    { '<leader>fd', ':FzfLua grep<cr> def <C-r><C-w><cr>', desc = 'Search for ruby method definition' },
    { '<leader>ff', ':FzfLua grep<cr>', desc = 'Grep' },
    { '<leader>fr', ':FzfLua resume<cr>', desc = 'Resume search' },
    { '<leader>fw', ':FzfLua grep_cword<cr>', desc = 'Grep for word under cursor' },
    { '<leader>wd', ':FzfLua lsp_workspace_diagnostics<cr>', desc = 'Workspace diagnostics' },
    { 'gr', ':FzfLua lsp_references<cr>', desc = 'LSP references' },
  },
}
