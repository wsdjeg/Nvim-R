let s:Logger = SpaceVim#api#import('logger')
call s:Logger.set_name('R')


function! r#logger#warn(msg)

    call s:Logger.warn(a:msg)

endfunction


function! r#logger#view()

    return s:Logger.view('Info')

endfunction
