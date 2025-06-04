-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Git related plugin
  'tpope/vim-fugitive',

  { -- Show undo history in a tree view
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle Undo Tree' })
    end,
  },

  -- Add a statusline to your Neovim setup
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = vim.g.have_nerd_font,
        theme = 'tokyonight',
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        -- lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_x = { 'copilot', 'encoding', 'fileformat', 'filetype' },
      },
    },
  },

  { 'laytan/cloak.nvim', opts = {} },

  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    opts = {
      panel = { enabled = false },
      suggestion = { enabled = false },
      filetypes = {
        yaml = true,
        markdown = true,
      },
    },
  },

  {
    'AndreM222/copilot-lualine',
    dependencies = { 'zbirenbaum/copilot.lua' },
  },

  -- 'github/copilot.vim',

  -- {
  --   'folke/trouble.nvim',
  --   dependencies = { 'nvim-tree/nvim-web-devicons' },
  --   opts = {},
  --   cmd = 'Trouble',
  --   keys = {
  --     {
  --       '<leader>xx',
  --       '<cmd>Trouble diagnostics toggle focus=true<cr>',
  --       desc = 'Diagnostics (Trouble)',
  --     },
  --     {
  --       '<leader>xX',
  --       '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
  --       desc = 'Buffer Diagnostics (Trouble)',
  --     },
  --     {
  --       '<leader>cs',
  --       '<cmd>Trouble symbols toggle focus=false<cr>',
  --       desc = 'Symbols (Trouble)',
  --     },
  --     {
  --       '<leader>cl',
  --       '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
  --       desc = 'LSP Definitions / references / ... (Trouble)',
  --     },
  --     {
  --       '<leader>xL',
  --       '<cmd>Trouble loclist toggle<cr>',
  --       desc = 'Location List (Trouble)',
  --     },
  --     {
  --       '<leader>xQ',
  --       '<cmd>Trouble qflist toggle<cr>',
  --       desc = 'Quickfix List (Trouble)',
  --     },
  --   },
  -- },

  {
    'folke/zen-mode.nvim',
    opts = {
      window = {
        width = 90,
        options = {
          number = true,
          relativenumber = true,
        },
      },
    },
    config = function()
      vim.keymap.set('n', '<leader>zz', function()
        require('zen-mode').toggle()
        vim.wo.wrap = false
      end)
    end,
  },
}
