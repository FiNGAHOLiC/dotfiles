set number

set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<

set nobackup

set noswapfile

let g:netrw_liststyle=3

autocmd vimenter * NERDTree

set nocompatible
filetype off

let g:syntastic_check_on_open=1
let g:syntastic_check_on_save=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=10
let g:syntastic_javascript_checker='jshint'
let g:syntastic_mode_map={
      \ 'mode': 'active',
      \ 'active_filetypes': ['javascript'],
      \ 'passive_filetypes': []
      \ }

if has('vim_starting')
	set runtimepath+=~/.vim/neobundle/neobundle.vim
	call neobundle#rc(expand('~/.vim/neobundle'))
endif

NeoBundle 'mattn/zencoding-vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tomasr/molokai'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'scrooloose/syntastic'

filetype plugin on
filetype indent on

if has("gui_running")
	set fuoptions=maxvert,maxhorz
	au GUIEnter * set fullscreen
endif

