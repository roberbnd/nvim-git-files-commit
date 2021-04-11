if exists('g:loaded_git_files_commit') | finish | endif "prevent file twice

let s:save_cpo = &cpo
set cpo&vim

hi def link GitFilesCommitHeader Number
hi def link GitFilesCommitSubHeader Identifer

"command to run our plugin
command! GitFilesCommit lua require'gitFilesCommit'.gitFilesCommit()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_git_files_commit = 1
