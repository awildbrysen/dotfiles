(module core.plugins { autoload {lazy lazy}
                      require-macros [aniseed.macros.autocmds] })

(lazy.setup
  [
   "Olical/aniseed"
   "nvim-lua/plenary.nvim"
   "nvim-telescope/telescope.nvim"

   {
    1 "echasnovski/mini.nvim"
    :version false
    }
   "folke/todo-comments.nvim"

   "neovim/nvim-lspconfig"
   {
    1 "williamboman/mason.nvim"
    :build ":MasonUpdate"
    :config true
    }
   "williamboman/mason-lspconfig.nvim"
   "SmiteshP/nvim-navic"

   {
    1 "nvim-treesitter/nvim-treesitter"
    :do ":TSUpdate"
    }
   "nvim-treesitter/nvim-treesitter-context"
   "nvim-treesitter/playground"

   ; Themes
   "folke/tokyonight.nvim"
   "Shatur/neovim-ayu"
   "rebelot/kanagawa.nvim"
   "ellisonleao/gruvbox.nvim"
   {
    1 "catppuccin/nvim"
    :name "catppuccin"
    }
   ])
