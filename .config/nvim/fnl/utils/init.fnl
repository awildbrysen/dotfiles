(module utils.init
  { require-macros [aniseed.macros.autocmds] })

(defn insert_into_buffer_at_cursor [input]
  (let [(row col) (unpack (vim.api.nvim_win_get_cursor 0))]
    (vim.api.nvim_buf_set_text 0 (- row 1) col (- row 1) col {1 input})))
