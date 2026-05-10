return {
  {
    "leonardopompeu/neovim-mourning-bloom",
    lazy = false,
    priority = 1000,
    config = function()
      require("mourning_bloom").setup({
        transparent = false,
      })
      vim.cmd.colorscheme("mourning-bloom")
    end,
  },
}
