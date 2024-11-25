-- lazy.nvim
return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
  },
  config = function()
    local notify = require("notify")
    notify.setup({
      stages = "fade_in_slide_out",
      timeout = 3000,
      background_colour = "#000000",
    })
    vim.notify = notify

    -- Configure Noice
    require("noice").setup({
      messages = {
        enabled = true,
        view = "notify",
      },
    })
  end,

  cmdline = {
    format = {
      cmdline = { pattern = "^:", icon = "", lang = "vim" },
    },
    messages = {
      -- NOTE: If you enable messages, then the cmdline is enabled automatically.
      -- This is a current Neovim limitation.
      enabled = true, -- enables the Noice messages UI
      view = "notify", -- default view for messages
      view_error = "notify", -- view for errors
      view_warn = "notify", -- view for warnings
      view_history = "messages", -- view for :messages
      view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
    },
  },
}
