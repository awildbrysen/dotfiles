(module core.lsp {require-macros [aniseed.macros.autocmds]} )

(defn lsp_handler [server_name]
  ((. (. (require :lspconfig) server_name) :setup) 
   {
    :capabilities ((. vim.lsp.protocol :make_client_capabilities))
    :on_attach (fn [client bufnr] 
                 (when client.server_capabilities.documentSymbolProvider
                   ((. (require :nvim-navic) :attach) client bufnr)
                   ))
    }))

((. (require :nvim-navic) :setup))
((. (require :mason) :setup))
((. (require :mason-lspconfig) :setup))
((. (require :mason-lspconfig) :setup_handlers) {1 lsp_handler})
((. (require :mini.completion) :setup))
