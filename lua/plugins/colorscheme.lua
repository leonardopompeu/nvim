return {
  {
    "leonardopompeu/neovim-kuromi-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("kuromi").setup({
        flavour = "neon",
        transparent = false,
      })
      vim.cmd.colorscheme("kuromi")
    end,
  },
}
