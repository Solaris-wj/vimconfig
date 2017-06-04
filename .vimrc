""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'powerline/powerline'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlp.vim'
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'scrooloose/nerdcommenter'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'fholgado/minibufexpl.vim'
Plugin 'molokai'
Plugin 'vim-colors-solarized'
" Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




""""""""""""""''''

" 显示相关

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示

"winpos 5 5          " 设定窗口位置

"set lines=40 columns=155    " 设定窗口大小

"set nu              " 显示行号

set go=             " 不要图形按钮

"syntax on           " 语法高亮

autocmd InsertLeave * se nocul  " 用浅色高亮当前行

autocmd InsertEnter * se cul    " 用浅色高亮当前行

"set ruler           " 显示标尺

set showcmd         " 输入的命令显示出来，看的清楚些

"set cmdheight=1     " 命令行（在状态行下）的高度，设置为1

"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)

"set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离

set novisualbell    " 不要闪烁(不明白)

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [encoding=%{&encoding}]\ [POS=%l,%v][%p%%]\  "状态行显示的内容
 "set statusline=%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)

" set foldenable      " 允许折叠
set nofoldenable

" set foldmethod=manual   " 手动折叠

"set background=dark "背景使用黑色

set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限

" 显示中文帮助

if version >= 603

    set helplang=cn

    set encoding=utf-8

endif

" 设置配色方案
" >> 主题风格
" 配色方案
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme molokai

let g:Powerline_colorscheme='solarized256'


set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312

set termencoding=utf-8

set encoding=utf-8

set fileencodings=ucs-bom,utf-8

set fileencoding=utf-8



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"新建.c,.h,.sh,.java文件，自动插入文件头

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"键盘命令

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


let mapleader=','

nmap <leader>w :w!<cr>

nmap <leader>f :find<cr>



" 映射全选+复制 ctrl+a

map <C-A> ggVGY

map! <C-A> <Esc>ggVGY

map <F12> gg=G

" 选中状态下 Ctrl+c 复制

vmap <C-c> "+y

"去空行

nnoremap <F2> :g/^\s*$/d<CR>


"新建标签

map <M-F2> :tabnew<CR>

"列出当前目录文件

map <F3> :tabnew .<CR>

"打开树状文件目录

map <C-F3> \be

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""实用设置

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置当文件被改动时自动载入

set autoread

"代码补全

set completeopt=preview,menu

"允许插件

filetype plugin on

"共享剪贴板

set clipboard+=unnamed

"从不备份

set nobackup

"自动保存

set autowrite

set ruler                   " 打开状态栏标尺

set cursorline              " 突出显示当前行

set magic                   " 设置魔术

set guioptions-=T           " 隐藏工具栏

set guioptions-=m           " 隐藏菜单栏

"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

" 设置在状态行显示的信息

set foldcolumn=0

set foldmethod=indent

set foldlevel=3

" 语法高亮
syntax enable
set syntax=on

" 去掉输入错误的提示声音

set noeb

" 在处理未保存或只读文件的时候，弹出确认

set confirm

" 自动缩进

set autoindent

set cindent

" Tab键的宽度

set tabstop=4

" 统一缩进为4

set softtabstop=4

set shiftwidth=4

" 不要用空格代替制表符

set expandtab


" 显示行号

set number

" 历史记录数

set history=1000

"禁止生成临时文件

" set nobackup

set noswapfile

"搜索忽略大小写

" "set ignorecase

"搜索逐字符高亮

set hlsearch

set incsearch

"行内替换

set gdefault

"编码设置

set enc=utf-8

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312

"语言设置

set langmenu=zh_CN.UTF-8

set helplang=cn


" 总是显示状态行

set laststatus=2

" 命令行（在状态行下）的高度，默认为1，这里是2

set cmdheight=2

" 侦测文件类型

filetype on

" 载入文件类型插件

filetype plugin on

" 为特定文件类型载入相关缩进文件

filetype indent on

" 保存全局变量

set viminfo+=!

" 带有如下符号的单词不要被换行分割

set iskeyword+=_,$,@,%,#,-

" 字符间插入的像素行数目

set linespace=0

" 增强模式中的命令行自动完成操作

set wildmenu

" 使回格键（backspace）正常处理indent, eol, start等

set backspace=2

" 允许backspace和光标键跨越行边界

set whichwrap+=<,>,h,l

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
" 通过使用: commands命令，告诉我们文件的哪一行被改变过

set report=0

" 在被分割的窗口间显示空白，便于阅读

set fillchars=vert:\ ,stl:\ ,stlnc:\

" 高亮显示匹配的括号

set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）

set matchtime=1

" 光标移动到buffer的顶部和底部时保持3行距离

set scrolloff=3

" 为C程序提供自动缩进

set smartindent

" 高亮显示普通txt文件（需要txt.vim脚本）

au BufRead,BufNewFile *  setfiletype txt


filetype plugin indent on

"打开文件类型检测, 加了这句才可以用智能补全

set completeopt=longest,menu

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" CTags的设定

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let Tlist_Sort_Type = "name"    " 按照名称排序

let Tlist_Use_Right_Window = 1  " 在右侧显示窗口

let Tlist_Compart_Format = 1    " 压缩方式

let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer

let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags

let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树


"autocmd FileType h,cpp,cc,c set tags+=D:\tools\cpp\tags

"let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的

"设置tags

set tags=tags

"set autochdir



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"其他东东

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"默认打开Taglist

let Tlist_Auto_Open=1

""""""""""""""""""""""""""""""

" Tag list (ctags)

""""""""""""""""""""""""""""""""

let Tlist_Ctags_Cmd = '/usr/bin/ctags'

let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的

let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim

let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口

" minibufexpl插件的一般设置

let g:miniBufExplMapWindowNavVim = 1

let g:miniBufExplMapWindowNavArrows = 1

let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

set clipboard=unnamed

"按F8，就可以关闭自动缩进,再按打开
" set pastetoggle=<C-S-p>
set pastetoggle=<leader>p
let g:ycm_python_binary_path = 'python'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

"自动关闭提示窗口
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

nnoremap <F3> :YcmpCompleter GoToDefinition<CR>
nnoremap <F2> :YcmCompleter GoTo<CR>
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_semantic_triggers = {}
let g:ycm_semantic_triggers.cxx = ['->', '.', ' ', '(', '[', '&']
let g:ycm_semantic_triggers.cpp = ['->', '.', ' ', '(', '[', '&']
let g:ycm_semantic_triggers.c = ['->', '.', ' ', '(', '[', '&']
let g:ycm_semantic_triggers.h = ['->', '.', ' ', '(', '[', '&']
let g:ycm_semantic_triggers.hpp = ['->', '.', ' ', '(', '[', '&']
let g:ycm_disable_for_files_larger_than_kb = 1000
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_auto_trigger = 0


" Tagbar
let g:tagbar_width=25
let g:tagbar_autofocus=1
nmap <S-l> :TagbarToggle<CR>

" NERD tree
let NERDChristmasTree=0
let NERDTreeWinSize=25
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
" autocmd vimenter * if !argc() | NERDTree | endif
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open a NERDTree
nmap <S-f> :NERDTreeToggle<cr>
nmap <S-i> \be

"ctrlp设置 -find files and names in buffer
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
"ctrlp extensions ctrlp funky
let g:ctrlp_extensions = ['funky']

" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <S-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>

" *.cpp 和 *.h 间切换
nmap <silent> <leader>s :FSHere<cr>
" <leader>cc，注释当前选中文本，如果选中的是整行则在每行首添加 //，如果选中一行的部分内容则在选中部分前后添加分别 /、/；
" <leader>cu，取消选中文本块的注释。

set fileencodings=utf-8,gbk,gb18030
set mouse=v

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" insert mode
imap <C-h> <LEFT>
imap <C-l> <RIGHT>
imap <C-k> <UP>
imap <C-j> <DOWN>

" 设置快捷键将选中文本块复制至系统剪贴板
nmap <Leader>y "+y
nmap <Leader>c "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
nmap <Leader>v "+p

set undodir=~/.undo_history/
set undofile

set ruler " 显示光标当前位置
"高亮显示当前行/列
set cursorline
set tags=tags;
set tags+=../tags
set tags+=../../tags
set tags+=../../../tags
set tags+=../../../../tags
set tags+=../../../../../tags
set tags+=../../../../../../tags
set autochdir
