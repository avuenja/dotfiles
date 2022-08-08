" Keymaps
"

" Leadermap
"
let mapleader = "."

" Explorer
"
nnoremap <leader>e <cmd>Ex<cr>
nnoremap <leader>le <cmd>Lexplore<cr>

" Tab & Window
"
nnoremap <leader>nt <cmd>tabnew<cr>
nnoremap <leader>nv <cmd>vnew<cr>

" File
" s => save
" q => quit
" \a => copy all
"
nnoremap <leader>s <cmd>w<cr>
nnoremap <leader>q <cmd>q<cr>
nnoremap <leader>\a <cmd>%y+<cr>

" Telescope
"
nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>
nnoremap <leader>tc <cmd>Telescope git_commits<cr>

" Flutter
"
nnoremap <leader>fd <cmd>FlutterRun -d macOS<cr>
nnoremap <leader>fq <cmd>FlutterQuit<cr>
nnoremap <leader>fr <cmd>FlutterHotReload<cr>
nnoremap <leader>fR <cmd>FlutterHotRestart<cr>
nnoremap <leader>fD <cmd>FlutterVisualDebug<cr>

