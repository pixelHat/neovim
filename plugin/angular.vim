function! Next_file(direction)
  let files = split(system('ls '.shellescape(expand('%:p:h'))), '\n')
  let path = expand('%:p:h')
  if !exists("w:next")
    let current_file_name = expand('%:t')
    let w:next = index(files, current_file_name)
  endif
  let w:next = float2nr(fmod(w:next + a:direction, len(files)))
  execute 'edit ' . path . '/' . files[w:next]
endfunction

if index(split(system('ls')), 'angular.json') != -1
  nnoremap <Leader>j :execute Next_file(1)<CR>
  nnoremap <Leader>k :call Next_file(-1)<CR>
endif
