return {
  'preservim/nerdcommenter',
  lazy = false, -- Ensures it loads at startup
  config = function()
    vim.g.NERDCreateDefaultMappings = 1 -- Enable default mappings
    vim.g.NERDSpaceDelims = 1 -- Add space after comment delimiters
    vim.g.NERDCommentEmptyLines = 0 -- Don't comment empty lines
  end,
}
