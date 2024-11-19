require("lazy").setup({

  -- UI
  "nvim-lualine/lualine.nvim",
  {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
  },

  -- Motions
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },


  -- Tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },

  -- File operations
  {
    "stevearc/oil.nvim",
    opts = {},
  },

  -- Git
  "lewis6991/gitsigns.nvim",
  "tpope/vim-fugitive",


  -- LSP && Completion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "github/copilot.vim",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- Theming
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
      opts = {
      style = "night",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
    },
  },
  "ellisonleao/gruvbox.nvim",
  "dracula/vim",
  {
    "zaldih/themery.nvim",
      lazy = false,
      config = function()
        require("themery").setup({
          themes = {"gruvbox", "catppuccin", "dracula", "tokyonight"},
          livePreview = true,
        })
      end
  },

  -- Other
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
})
