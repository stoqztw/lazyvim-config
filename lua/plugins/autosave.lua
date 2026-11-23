return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle", -- команда для быстрого вкл/выкл автосохранения
  event = { "InsertLeave", "TextChanged" },
  opts = {
    enabled = true,
    debounce_delay = 1000, -- задержка в миллисекундах (1 сек)
  },
}
