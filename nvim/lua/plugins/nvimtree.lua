require'nvim-tree'.setup {
	disable_netrw = true,
	view = {
    width = 40,
    side = "right",
    signcolumn = "no",
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
}
