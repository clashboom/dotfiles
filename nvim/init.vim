if &compatible
  set nocompatible
endif
set runtimepath+={'~/.cache/dein'}

if dein#load_state({'~/.config/nvim/plugin'})
  call dein#begin({'~/.config/nvim/plugin'})

  call dein#add({'~/.cache/dein'})
  call dein#add('Shougo/neocomplete.vim')
  ...

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
