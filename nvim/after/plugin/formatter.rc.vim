lua << EOF
  require('formatter').setup()
EOF

augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END

