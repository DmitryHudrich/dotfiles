return {
  "GustavEikaas/easy-dotnet.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
  config = function()
    require("easy-dotnet").setup({
      auto_bootstrap_namespace = {
        type = "file_scoped",
        enabled = true,
        use_clipboard_json = {
          behavior = "prompt",
          register = "+",
        },
      },
    })
  end,
}
