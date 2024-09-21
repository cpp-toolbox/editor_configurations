" Open a terminal for the build command
call feedkeys(":terminal bash \\#build \<CR>", 'n') " works because # is the bash comment

" Open a terminal for the run command, then navigate to the release build directory if it exists
call feedkeys(":terminal bash \\#run \<CR>", 'n')
call feedkeys("i if test -d build/Release; then cd build/Release && echo 'Changed to Release directory'; else echo 'Release build path does not exist'; fi \<CR>", 'n')
call feedkeys("\<C-\>\<C-n>", 'n')

" Open a terminal for the debug command, then navigate to the debug build directory if it exists
call feedkeys(":terminal bash \\#debug \<CR>", 'n')
call feedkeys("i if test -d build/Debug; then cd build/Debug && echo 'Changed to Debug directory'; else echo 'Debug build path does not exist'; fi \<CR>", 'n')
call feedkeys("\<C-\>\<C-n>", 'n')

" Open a terminal for the scripts directory, then navigate there if it exists
call feedkeys(":terminal bash \\#scripts \<CR>", 'n')
call feedkeys("i if test -d scripts; then cd scripts && echo 'Changed to scripts directory'; else echo 'Scripts path does not exist'; fi \<CR>", 'n')
call feedkeys("\<C-\>\<C-n>", 'n')

" Open a terminal for Git operations
call feedkeys(":terminal bash \\#git \<CR>", 'n')
call feedkeys("\<C-\>\<C-n>", 'n')
