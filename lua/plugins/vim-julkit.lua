return {
  "luk400/vim-jukit",
  ft = { "python", "ipynb" },
  config = function()
    vim.g.jukit_auto_output_panel = 1
    vim.g.jukit_mappings = 1
  end,
}
