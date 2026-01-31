return {
  -- colorscheme
  {
    "drewtempelmeyer/palenight.vim",
    lazy = false, -- Load always
  },
  {
    "folke/tokyonight.nvim",
    enabled = true, -- Load always
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
    },
  },

  -- git integration
  {
    "lewis6991/gitsigns.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  -- Tabnine (commented out in original, so keeping it commented)
  -- { "codota/tabnine-nvim", build = "./dl_binaries.sh" },

  {
    "akinsho/bufferline.nvim",
    -- tag = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
  },

  -- surround vim
  "tpope/vim-surround",

  -- nerd commenter
  "scrooloose/nerdcommenter",

  -- status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
  },

  -- show recent files on empty nvim command
  "mhinz/vim-startify",

  -- lsp config
  {
    "mason-org/mason.nvim",
    -- "williamboman/mason-lspconfig.nvim", -- LazyVim handles this
    -- "neovim/nvim-lspconfig", -- LazyVim handles this
  },

  -- GitHub Copilot
  { "github/copilot.vim" },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      "github/copilot.vim",
      "nvim-lua/plenary.nvim",
    },
    build = "make tiktoken",
    keys = {
      { "<leader>ch", "<cmd>CopilotChat<CR>",        desc = "Copilot Chat" },
      { "<leader>ce", "<cmd>CopilotChatExplain<CR>", desc = "Copilot Explain" },
      { "<leader>cf", "<cmd>CopilotChatFix<CR>",     desc = "Copilot Fix" },
      { "<leader>cv", ":CopilotChatVisual<CR>",      mode = "v",              desc = "Copilot Chat (Visual)" },
    },
    config = function()
      require("CopilotChat").setup({
        window = {
          layout = "float",
          relative = "editor",
          anchor = "NE",
          border = "rounded",
          width = 0.3,
          height = 0.6,
          row = 1,
          col = vim.o.columns - 1,
        },
      })
    end,
  },

  --[[ Codeium (commented out in original, so keeping it commented)
  {
    "Exafunction/codeium.vim",
    config = function ()
      vim.keymap.set("i", "<C-g>", function () return vim.fn["codeium#Accept"]() end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true, silent = true })
    end,
  },
  ]]

  {
    "kkoomen/vim-doge",
    build = ":call doge#install()",
  },

  -- Lua
  {
    "abecodes/tabout.nvim",
    config = function()
      require("tabout").setup({
        tabkey = "<Tab>",
        backwards_tabkey = "<S-Tab>",
        act_as_tab = true,
        act_as_shift_tab = false,
        default_tab = "<C-t>",
        default_shift_tab = "<C-d>",
        enable_backwards = true,
        completion = true,
        tabouts = {
          { open = "'", close = "'" },
          { open = '"', close = '"' },
          { open = "`", close = "`" },
          { open = "(", close = ")" },
          { open = "[", close = "]" },
          { open = "{", close = "}" },
        },
        ignore_beginning = true,
        exclude = {},
      })
    end,
    dependencies = { "nvim-treesitter" }, -- Use dependencies instead of wants
    after = { "nvim-cmp" },               -- Use after instead of after
  },

  -- this will enable LSP for neovim config
  "folke/neodev.nvim",

  -- for LSP autocompletion

  -- telescope - searching / navigation
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
    config = function()
      -- Carregar a extensão de live_grep_args
      require("telescope").load_extension("live_grep_args")

      -- Mapeamento para usar grep_string
      vim.api.nvim_set_keymap("n", "<leader>f", ":Telescope live_grep<CR>", { noremap = true, silent = true })
    end,
  },

  {
    "startup-nvim/startup.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
    config = function()
      require("startup").setup()
    end,
  },

  -- better highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  {
    "kyazdani42/nvim-tree.lua",
    dependencies = "kyazdani42/nvim-web-devicons",
    config = function()
      require("nvim-tree").setup({})
    end,
  },

  {
    "amrbashir/nvim-docs-view",
    opt = true,
    cmd = { "DocsViewToggle" },
    config = function()
      require("docs-view").setup({
        position = "bottom",
        width = 60,
      })
    end,
  },

  -- prettier tabs
  "romgrk/barbar.nvim",

  -- nice diagnostic pane on the bottom
  "folke/lsp-trouble.nvim",

  -- better LSP UI (for code actions, rename etc.)
  "tami5/lspsaga.nvim",

  -- show indentation levels
  "lukas-reineke/indent-blankline.nvim",

  -- highlight variables under cursor
  "RRethy/vim-illuminate",

  "rcarriga/nvim-notify",

  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup({
        filetypes = { "html", "xml", "javascript", "typescript", "javascriptreact", "typescriptreact" },
      })
    end,
  },

  -- conform.nvim (already handled in linting_and_formatting.lua)
  -- { "stevearc/conform.nvim", config = function() require("conform").setup() end, },

  "iamcco/markdown-preview.nvim",

  "NvChad/nvim-colorizer.lua",

  "folke/zen-mode.nvim",

  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
