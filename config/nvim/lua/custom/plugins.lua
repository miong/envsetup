local plugins = {
  -- Lsp override
  {
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
  -- cmp override
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
          require("plugins.configs.others").luasnip(opts)
        end,
      },

      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          -- setup cmp for autopairs
          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },

      -- cmp sources plugins
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      },
    },
    opts = function()
      return require "custom.configs.cmp"
    end,
    config = function(_, opts)
      require("cmp").setup(opts)
    end,
  },

  -- Search and replace
  {
    "roobert/search-replace.nvim",
    lazy = false,
    config = function()
      require("search-replace").setup({
        -- optionally override defaults
        default_replace_single_buffer_options = "gcI",
        default_replace_multi_buffer_options = "egcI",
      })
    end,
  },
  -- litee
  { 
    "ldelossa/litee.nvim",
    lazy = false,
    init = function ()
      require("litee.lib").setup({})
    end,
    config = function ()
      require('litee.lib').icon_set = require("litee.lib.icons").default
    end
  },
  {
    "ldelossa/litee-calltree.nvim",
    lazy = false,
    init = function ()
      require("litee.calltree").setup({})
    end
  },
  {
    "ldelossa/litee-symboltree.nvim",
    lazy = false,
    init = function ()
      require("litee.symboltree").setup({})
    end
  },
  -- todo-commments
  {
    "folke/todo-comments.nvim",
    lazy = false,
    config = function ()
      require("todo-comments").setup({
        search = {
          pattern = [[(#|\\) *\b(KEYWORDS) *:?]],
        },
      })
    end
  },
  -- noice
  {
    "folke/noice.nvim",
    lazy = false,
    dependencies = {
      {
        "MunifTanjim/nui.nvim"
      },
      {
        "rcarriga/nvim-notify"
      },
    },
    config = function ()
      require("noice").setup({
        presets = {
          bottom_search = false,
          command_palette = true,
          long_message_to_split = true,
          inc_rename = false,
          lsp_doc_border = true,
        },
        lsp = {
          hover = { enabled = false },
          signature = { enabled = false },
        },
      })
    end
  },
  -- wilder
  {
    "gelguy/wilder.nvim",
    lazy = false,
    dependencies = {
      {
        "roxma/nvim-yarp"
      },
      {
        "roxma/vim-hug-neovim-rpc"
      }
    },
    config = function ()
      local wilder = require('wilder')
      wilder.setup({
        modes = {':', '/', '?'},
      })
      wilder.set_option('renderer', wilder.popupmenu_renderer(
        wilder.popupmenu_border_theme({
          border = 'rounded',
          min_width = "100%",
          left = { ' ‣ ', wilder.popupmenu_devicons() },
          right = { ' ', wilder.popupmenu_scrollbar() },
          highlighter = wilder.basic_highlighter(),
          highlights = { accent = wilder.make_hl("WilderAccent", "Pmenu", {{a=1}, {a=1}, {foreground = "#a80775"}})}
        })
      ))
    end
  },

}

vim.o.inccommand = "split"

return plugins
