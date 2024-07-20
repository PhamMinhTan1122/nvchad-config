return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "clangd"
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "cpp"
  		},
  	},
  },
  {
    "vyfor/cord.nvim",
    build = "./build",
    event = 'VeryLazy',
    config = function ()
      require('cord').setup {
        usercmds = true,
        log_level = 'error',
        timer = {
          interval = 1500,
          reset_on_idle = false,
          reset_on_change = false,
        },
        editor = {
          image = nil,
          client = 'neovim',
          tooltip = 'Neoim/Arch Linux 🐧',
        },
        display = {
          show_time = true,
          show_repository = true,
          show_cursor_position = false,
          swap_fields = false,
          swap_icons = false,
          workspace_blacklist = {},
        },
        lsp = {
          show_problem_count = true,
          severity = 1,
          scope = 'workspace',
        },
        idle = {
          enable = true,
          show_status = true,
          timeout = 300000,
          disable_on_focus = true,
          text = 'Idle',
          tooltip = '💤',
        },
        text = {
          viewing = 'Viewing {}',
          editing = 'Editing {}',
          file_browser = 'Browsing files in {}',
          plugin_manager = 'Managing plugins in {}',
          lsp_manager = 'Configuring LSP in {}',
          vcs = 'Committing changes in {}',
          workspace = 'In {}',
        },
        buttons = {
          {
            label = 'View Repository',
            url = 'git',
          },
        },
        assets = nil,
        }
    end
  }
}