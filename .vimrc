" vi互換をOFF
set nocompatible

" filetypeをオフ
filetype off

" 行番号を表示
set number

" 相対行番号を表示
"set relativenumber

" タブ、空白、改行を可視化する
set list

" タブ、空白、改行等の表示文字を設定
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<

" バックアップファイルを作成しない
set nobackup

" スワップファイルを作成しない
set noswapfile

" viminfoファイルを作成しない
set viminfo=

" vim-easymotionの起動割り当てを変更
let g:EasyMotion_leader_key = '<Space><Space>'

" 矢印キーを使用しない
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Right> <Nop>

" 検索結果移動時に画面を中央にしながら移動
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" 起動時にNERDTreeを起動
"autocmd vimenter * NERDTree
"
" netrmは常にtree view
"let g:netrw_liststyle=3

" neocomplcacheを起動時に有効化
let g:neocomplcache_enable_at_startup = 1

" neocomplcacheのキーマッピングを設定
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><CR>  pumvisible() ? neocomplcache#smart_close_popup() : "\<CR>"

" syntasticの設定
" なぜかウインドウを閉じれないケースがあるので無効にしとく
" let g:syntastic_check_on_open=1
" let g:syntastic_check_on_save=1
" let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=10
let g:syntastic_javascript_checker='jshint'
let g:syntastic_mode_map={
      \ 'mode': 'active',
      \ 'active_filetypes': [],
      \ 'passive_filetypes': ['html']
      \ }

" neobundleの格納パスを指定して実行
if has('vim_starting')
	set runtimepath+=~/.vim/neobundle/neobundle.vim
	call neobundle#rc(expand('~/.vim/neobundle'))
endif

" neobundleで管理するプラグイン
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tomasr/molokai'
"NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'

" 起動時はフルスクリーンで起動
if has("gui_running")
	set fuoptions=maxvert,maxhorz
	au GUIEnter * set fullscreen
endif

" filetypeをオン
filetype plugin indent on
