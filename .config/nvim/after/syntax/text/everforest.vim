if !exists('g:colors_name') || g:colors_name !=# 'everforest'
    finish
endif
if index(g:everforest_loaded_file_types, 'text') ==# -1
    call add(g:everforest_loaded_file_types, 'text')
else
    finish
endif
let g:everforest_last_modified = 'Sat Jul 16 13:29:44 UTC 2022'
" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
