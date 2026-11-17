return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              gofumpt = true,
              usePlaceholders = true,
              completeUnimported = true,
              staticcheck = true,
              analyses = {
                unusedparams = true,
              },
              -- Дополнительные настройки анализов, подсказок и codelenses можно указать здесь
            },
          },
        },
      },
    },
  },
}
