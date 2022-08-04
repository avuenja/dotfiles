" Keymaps
"

" Leadermap
"
let mapleader = "."

" Explore
"
nnoremap <leader>e <cmd>Ex<cr>

" Tab
"
nnoremap <leader>n <cmd>tabnew<cr>

" Save file
"
nnoremap <leader>s <cmd>w<cr>

" Telescope
"
nnoremap <leader>vf <cmd>Telescope find_files<cr>
nnoremap <leader>vt <cmd>Telescope live_grep<cr>
nnoremap <leader>vb <cmd>Telescope buffers<cr>
nnoremap <leader>vh <cmd>Telescope help_tags<cr>
nnoremap <leader>vc <cmd>Telescope git_commits<cr>

" Flutter
"
nnoremap <leader>fd <cmd>FlutterRun -d macOS<cr>
nnoremap <leader>fq <cmd>FlutterQuit<cr>
nnoremap <leader>fh <cmd>FlutterHotReload<cr>
nnoremap <leader>fR <cmd>FlutterHotRestart<cr>
nnoremap <leader>fD <cmd>FlutterVisualDebug<cr>

