set number

set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<

set nobackup

set noswapfile

let g:netrw_liststyle=3

autocmd vimenter * NERDTree

set nocompatible
filetype off

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

filetype plugin on
filetype indent on

if has("gui_running")
	set fuoptions=maxvert,maxhorz
	au GUIEnter * set fullscreen
endif

