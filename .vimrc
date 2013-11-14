" vi互換をOFF
set nocompatible

" filetypeをオフ
filetype off

" neobundleの格納パスを指定して実行
if has('vim_starting')
	set runtimepath+=~/.vim/neobundle/neobundle.vim
	call neobundle#rc(expand('~/.vim/neobundle'))
endif

" neobundleで管理するプラグイン
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tomasr/molokai'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'vim-scripts/tagbar-phpctags', {
     \ 'build' : {
     \ 'others' : 'chmod +x bin/phpctags',
     \ },
     \ }
" NeoBundle 'vim-scripts/AutoClose'
" NeoBundle 'Townk/vim-autoclose'
" NeoBundle 'nathanaelkane/vim-indent-guides'

" filetypeをオン
filetype plugin indent on

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

" インサートモードを抜けたら日本語入力を自動的にオフにする
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

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

" タブ移動
noremap gh gT
noremap gl gt

" ESCをjjに
inoremap jj <Esc>

" 括弧やクォートを自動補完
" inoremap { {}<LEFT>
" inoremap [ []<LEFT>
" inoremap ( ()<LEFT>
" inoremap " ""<LEFT>
" inoremap ' ''<LEFT>

" ctags用の設定
" F3キーで検索結果をQuickFixに表示する
nnoremap <F3> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>

" tagbarをF8キーで起動する
nmap <F8> :TagbarToggle<CR>

" tagbarでCSSもサポートする
let g:tagbar_type_css = {
     \ 'ctagstype' : 'Css',
     \ 'kinds' : [
     \ 'c:classes',
     \ 's:selectors',
     \ 'i:identities'
     \ ]
     \ }

" 起動時にtagbarを起動する
" autocmd VimEnter * nested :TagbarOpen

" 起動時にNERDTreeを起動
" autocmd vimenter * NERDTree

" 不可視ファイルを表示する
let g:NERDTreeShowHidden = 1

" 起動時にブックマークを表示
let NERDTreeShowBookmarks=1

" NERDTreeを起動時に表示
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_open_on_console_startup=1

" 起動時にディレクトリならNERDTree、ファイルならファイルにフォーカスをあてる
let g:nerdtree_tabs_smart_startup_focus=1

" 新規タブを開いた時にもNERDTreeを表示する
let g:nerdtree_tabs_open_on_new_tab=1

" netrmは常にtree view
let g:netrw_liststyle=3

" neocomplcacheを起動時に有効化
let g:neocomplcache_enable_at_startup = 1

" ユーザー定義スニペット保存ディレクトリ
" let g:neocomplcache_snippets_dir = $HOME.'/.vim/snippets'
let g:neosnippet#snippets_directory = '~/.vim/snippets'

" http://kazuph.hateblo.jp/entry/2013/01/19/193745
" <TAB>: completion.                                         
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"   
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>" 
inoremap <expr><CR>  pumvisible() ? neocomplcache#smart_close_popup() : "\<CR>"

" Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
" if has('conceal')
" 	set conceallevel=2 concealcursor=i
" endif

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

" 起動時はフルスクリーンで起動
if has("gui_running")
	set fuoptions=maxvert,maxhorz
	au GUIEnter * set fullscreen
endif

" indent_guides用にカラースキームを指定
" colorscheme molokai
" set expandtab
" set tabstop=4
" set shiftwidth=4

" indent_guidesの設定
" https://github.com/nathanaelkane/vim-indent-guides
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1
