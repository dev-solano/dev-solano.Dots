return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 100,
    opts = function()
      return {}
    end,
  },
  {
    "navarasu/onedark.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
}
