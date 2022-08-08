lua << EOF
require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    "tsx",
    "php",
    "json",
    "yaml",
    "swift",
    "html",
    "vue",
    "vim",
    "typescript",
    "sql",
    "prisma"
  },
  sync_install = true,
  --auto_install = true,
  autotag = {
    enable = true,
  }
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
EOF

"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()

