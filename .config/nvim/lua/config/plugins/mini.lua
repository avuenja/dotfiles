return {
  {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
      local statusline = require "mini.statusline"
      statusline.setup { use_icons = true }

      local comment = require "mini.comment"
      comment.setup {}

      local notify = require "mini.notify"
      notify.setup {}
    end
  },
}
