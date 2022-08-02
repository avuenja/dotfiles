lua <<EOF
require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "html",
    "dart",
    "css",
    "vue",
    "vim",
    "typescript",
    "sql",
    "prisma"
  },
  sync_install = true,
  auto_install = true,
  autotag = {
    enable = true,
  }
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
EOF
