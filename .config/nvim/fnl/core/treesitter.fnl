(module core.treesitter 
  { require-macros [aniseed.macros.autocmds]})

((. (. (require :nvim-treesitter) :configs) :setup) 
 {
  :ensure_installed ["c_sharp" "rust" "query"]
  :highlight {
              :enable true
              }
  :playground {
               :enable true
               :updatetime 15
               }
  })

((. (require :treesitter-context) :setup)
 {
  :enable true
  :max_lines 0
  :line_numbers true
  })

