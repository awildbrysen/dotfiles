(module core.init 
  { autoload { ts telescope.builtin } 
   require-macros [aniseed.macros.autocmds] })

(tset vim.g "mapleader" " ")

(require :core.plugins)
(require :core.lsp)
(require :utils.init)
(require :utils.uuid)

(vim.cmd.colorscheme :catppuccin-latte)

(each [k v 
       (pairs 
         {
          :cursorline true
          :laststatus 2
          :showcmd true
          :ruler true
          :relativenumber true
          :tabstop 4
          :shiftwidth 4
          :softtabstop 4
          :expandtab true
          :ignorecase true
          :smartcase true
          :incsearch true
          :showmatch true
          })]
  (tset vim.o k v))

(each [keys [mode action]
       (pairs 
         {
          :<c-p> ["n" (fn _ [] (vim.cmd ":Telescope find_files"))]
          :<leader>lca ["n" (fn _ [] (vim.lsp.buf.code_action))]
          :<leader><leader> ["n" (fn _ [] (tset vim.o :hlsearch (not (. vim.o :hlsearch))))]
          :<leader>s ["n" (fn _ [] (ts.grep_string {:search (vim.fn.input "> ")}))]
          :<leader>cgu ["n" (fn _ [] ((. (require :utils.init) :insert_into_buffer_at_cursor) ((. (require :utils.uuid) :generate_uuid))))]
          :<leader>ds ["n" (fn _ [] (ts.diagnostics))]
          :<leader>dd ["n" (fn _ [] (vim.diagnostic.disable))]
          :<leader>dl ["n" (fn _ [] (vim.diagnostic.setloclist))]
          :gd ["n" (fn _ [] (ts.lsp_references))]
          })]
  (vim.keymap.set mode keys action))

((. (require :todo-comments) :setup))
