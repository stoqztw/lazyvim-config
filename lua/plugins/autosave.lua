return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle", -- загрузка по команде
  event = { "InsertLeave", "TextChanged" }, -- загрузка при событиях
  opts = {
    enabled = true,
    trigger_events = {
      -- События для мгновенного сохранения
      immediate_save = { "BufLeave", "FocusLost", "QuitPre", "VimSuspend" },
      -- События для отложенного сохранения (сработает при выходе из Insert или правках в Normal)
      defer_save = { "InsertLeave", "TextChanged" },
      -- Отменить отложенное сохранение, если вы снова вошли в Insert
      cancel_deferred_save = { "InsertEnter" },
    },
    -- Главное условие: разрешаем сохранение ТОЛЬКО в режиме Normal ("n")
    condition = function(buf)
      local mode = vim.fn.mode()
      if mode ~= "n" then
        return false
      end

      -- Стандартная проверка, что буфер можно изменять
      if vim.fn.getbufvar(buf, "&modifiable") == 1 then
        return true
      end

      return false
    end,
    debounce_delay = 1600, -- задержка перед сохранением в миллисекундах (1 секунда)
  },
}
