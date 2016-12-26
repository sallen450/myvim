" ****************************
"	Vundle 
" ****************************

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'Yggdroot/indentLine'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'posva/vim-vue'
"Plugin 'mxw/vim-jsx'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/syntastic'
Plugin 'mtscout6/syntastic-local-eslint.vim'
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
Plugin 'qpkorr/vim-bufkill'
"Plugin 'zefei/vim-wintabs'
Plugin 'iamcco/markdown-preview.vim'

call vundle#end()
filetype plugin indent on


" ****************************
"	common conf
" ****************************
syntax on

let mapleader=','
let g:mapleader=','

set laststatus=2		"总是显示状态栏
set shiftwidth=4		"缩进空格数
set tabstop=4			"制表符宽度
set softtabstop=4		"删除制表符的空格数
set expandtab			"点击 tab 的时候，插入 4 个空格
set helplang=cn			"帮助为中文
set nu					"行号
set backspace=2			"解决mac下删除的问题
"搜索的时候忽略大小写, 有一个大写字母的时候，保持大小写敏感
set ignorecase smartcase
set noerrorbells		"禁止错误提示音（item2下，<c-j>仍然有声音）
set novisualbell		"禁止错误提示音（item2下，<c-j>仍然有声音）
set t_vb=				"禁止错误提示音（item2下，<c-j>仍然有声音）
set scrolloff=7			"在上下移动光标时，光标的上方或下方至少会保留显示的行数
"set conceallevel=0		"解决json文件，双引号隐藏的问题，导致的光标位置错乱
"let g:vim_json_syntax_conceal=0
"let g:indentLine_noConcealCursor=""

set list
set listchars=tab:>\ ,trail:·

set shell=/bin/zsh

nnoremap <C-t>     :tabnew<CR>			"新建tab  Ctrl+t
inoremap <C-t>     <Esc>:tabnew<CR>		"新建tab  Ctrl+t

nnoremap <C-J> <C-W><C-J>	"切换到下方窗口
nnoremap <C-K> <C-W><C-K>	"切换到上方窗口
nnoremap <C-L> <C-W><C-L>	"切换到右方窗口
nnoremap <C-H> <C-W><C-H>	"切换到左方窗口

"nnoremap <C-J> <C-W>J		"移动窗口到下方
"nnoremap <C-K> <C-W>K		"移动窗口到上方
"nnoremap <C-L> <C-W>L		"移动窗口到右方	
"nnoremap <C-H> <C-W>H		"移动窗口左下方

nnoremap <space> zz			"当前行屏幕窗口居中

" ****************************
"	Insert mode move keymap
" ****************************
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l

" ****************************
"	NERDTree Config
" ****************************
"打开关闭目录树
map <C-o> :NERDTreeToggle<CR>
"进入vim默认打开目录树，并focus到文件窗口
autocmd VimEnter * NERDTree | wincmd p
"没有打开文件的时候，也打开目录树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"当最后一个窗口关闭的时候，同时关闭目录树
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ****************************
"	Vim-airline Config
" ****************************
let g:airline_theme='powerlineish'


" ****************************
"	Ctrlp Config
" ****************************
let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'


" ****************************
"	NERDTree Git Config
" ****************************
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" ****************************
"	indentLint Config
" ****************************
"let g:indentLine_enabled = 1
"let g:indentLine_color_term = 239
"let g:indentLine_leadingSpaceEnabled = 1


" ****************************
"	Jsx Config
" ****************************
let g:jsx_ext_required = 0


" ****************************
"	Eslint Config
" ****************************
let g:syntastic_javascript_checkers = ['eslint']

" ****************************
"	Markdown preview Config
" ****************************
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"

