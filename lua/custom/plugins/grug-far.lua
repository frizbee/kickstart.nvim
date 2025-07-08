return {
  'MagicDuck/grug-far.nvim',
  -- grug-far defers all requires, so no need for lazy config
  config = function()
    require('grug-far').setup {
      -- options (none required currently)
    }
  end,
  keys = {
    { '<leader>sp', '<cmd>GrugFar vertical split buffer<cr>', desc = '[S]earch and Re[P]lace' },
  },
}
