let s:save_cpo = &cpo
set cpo&vim


function! tweetvim#action#print_info#define() abort
  return {
        \ 'description' : 'print a tweet information',
        \}
endfunction


function! tweetvim#action#print_info#execute(tweet) abort
  if exists(':PrettyPrint') == 2
    PrettyPrint a:tweet
  else
    echo a:tweet
  endif
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
