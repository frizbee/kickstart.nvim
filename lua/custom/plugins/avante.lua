return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  lazy = false,
  version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
  opts = {
    -- add any opts here
    -- for example
    provider = 'claude',
    providers = {
      claude = {
        endpoint = 'https://api.anthropic.com',
        model = 'claude-sonnet-4-20250514', -- or another Claude model: claude-3-5-haiku-20241022 claude-sonnet-4-20250514; claude-opus-4-20240514;
        api_key_name = 'ANTHROPIC_API_KEY', -- environment variable name
        timeout = 70000, -- Timeout in milliseconds
        disable_tools = true, -- disable tools for now
        extra_request_body = {
          temperature = 0,
          max_tokens = 4096, -- 2048, 4096, 8192, 16384
        },
      },
      -- behaviour = {
      -- auto_suggestions = false,
      -- minimize_diff = false,
      -- enable_claude_text_editor_tool_mode = true,
      -- },
    },
    -- provider = 'openai',
    -- openai = {
    -- endpoint = 'https://api.openai.com/v1',
    -- model = 'gpt-4o', -- your desired model (or use gpt-4o, etc.)
    -- timeout = 30000, -- timeout in milliseconds
    -- temperature = 0, -- adjust if needed
    -- max_tokens = 4096,
    -- -- reasoning_effort = "high" -- only supported for reasoning models (o1, etc.)
    -- },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = 'make',
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    --- The below dependencies are optional,
    'echasnovski/mini.pick', -- for file_selector provider mini.pick
    'nvim-telescope/telescope.nvim', -- for file_selector provider telescope
    'hrsh7th/nvim-cmp', -- autocompletion for avante commands and mentions
    'ibhagwan/fzf-lua', -- for file_selector provider fzf
    'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
    -- 'zbirenbaum/copilot.lua', -- for providers='copilot'
    {
      -- support for image pasting
      'HakonHarnes/img-clip.nvim',
      event = 'VeryLazy',
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
