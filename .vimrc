if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

" mepbundle.vim自身をでneobundle.vim管理する
NeoBundleFetch 'Shougo/neobundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""
" プラグイン設定
"  :help neobundle-examples
""""""""""""""""""""""""""""""""""""""""""""""""""

call neobundle#end()

filetype plugin indent on

" プラグインのインストールチェック
NeoBundleCheck

if !has('vim_starting')
  " .vimrcの再読み込み時の設定
  call neobundle#call_hook('on_source')
endif


" 文字コードをUTF-8に設定
set fenc=utf-8
" 入力中のコマンドをステータスに表示
set showcmd

" 行番号を表示
set number
" 現在の行を強調
set cursorline
" 現在の列を強調
" set cursorcolumn
" 行末の1文字先までカーソル移動可能
set virtualedit=onemore
" シンタックスハイライトの有効化
syntax enable

" 不可視文字を可視化
set list listchars=tab:\▸:\-
" tab文字を半角スペースで表示
set tabstop=2
" 行頭以外のtab文字の表示幅
set shiftwidth=2 
" 行頭のtab文字の表示幅
set expandtab

" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
map <Esc><Esc> :nohlsearch<CR><Esc>
