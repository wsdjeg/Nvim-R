if has("win32")
    let s:nvv = "0.2.1"
else
    let s:nvv = "0.2.0"
endif

if has("nvim")
    if !has("nvim-" . s:nvv)
        call r#logger#warn("Nvim-R requires Neovim >= " . s:nvv . ".")
        let g:rplugin_failed = 1
        finish
    endif
elseif v:version < "800"
    call RWarningMsg("Nvim-R requires either Neovim >= " . s:nvv . " or Vim >= 8.0.")
    let g:rplugin_failed = 1
    finish
elseif !has("channel") || !has("job")
    call RWarningMsg("Nvim-R requires either Neovim >= " . s:nvv . " or Vim >= 8.0.\nIf using Vim, it must have been compiled with both +channel and +job features.\n")
    let g:rplugin_failed = 1
    finish
endif

unlet s:nvv
