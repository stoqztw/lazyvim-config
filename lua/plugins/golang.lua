return {
  {
    "mattn/emmet-vim",
    ft = {
      "html",
      "css",
      "javascriptreact",
      "typescriptreact",
    },
    config = function()
      vim.g.user_emmet_leader_key = "<C-y>"

      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "html",
          "css",
          "javascriptreact",
          "typescriptreact",
        },
        callback = function()
          vim.keymap.set("i", "<Tab>", function()
            return vim.fn["emmet#expandAbbrIntelligent"](vim.api.nvim_replace_termcodes("<Tab>", true, false, true))
          end, {
            buffer = true,
            expr = true,
            replace_keycodes = true,
            desc = "Emmet expand",
          })
        end,
      })
    end,
  },
}
