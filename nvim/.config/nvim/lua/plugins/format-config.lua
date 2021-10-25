require"lspconfig".efm.setup {
  init_options = {documentFormatting = true},
  filetypes = {"lua"},
  settings = {
    rootMarkers = {"./git"},
    languages = {
      lua = {
        {
          formatCommand = "lua-format -i --indent-width=2 --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb",
          formatStdin = true
        }
      }
    }
  }
}
