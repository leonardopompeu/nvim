return {
  colorscheme = function()
    -- Só aplica se o plugin estiver carregado
    local ok, _ = pcall(vim.cmd, "colorscheme catppuccin")
    if not ok then
      vim.notify("Catppuccin não encontrado, pulando colorscheme", vim.log.levels.WARN)
    end
  end,
}
