if has('gui_running')
  set guifont=Menlo:h18
  colorscheme mustang
  set background=dark

  set go-=m
  set go-=T
  set go-=r
  set go-=l
  set go-=b

  let g:sparkupExecuteMapping = '<D-e>'

  highlight SpellBad term=underline gui=undercurl guisp=Orange
else
  set nocursorline
endif

if has("gui_macvim")
  " Grow to maximum horizontal size on entering fullscreen mode
  set fuopt+=maxhorz 

  " CommandT 
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>

endif
