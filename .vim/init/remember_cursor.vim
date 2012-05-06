autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif
