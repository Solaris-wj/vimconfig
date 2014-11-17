set nocompatible               " be iMproved
filetype off                   " required!       /**  从这行开始，vimrc配置 **/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Plugin 'Valloric/YouCompleteMe'
Plugin 'https://github.com/scrooloose/nerdtree.git'  
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'https://github.com/vim-scripts/taglist.vim.git' 
Bundle 'Yggdroot/indentLine'
Bundle 'ctrlp.vim'

Bundle 'jslint.vim'
Bundle "pangloss/vim-javascript"
Bundle 'jsbeautify'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'django_templates.vim'
Bundle 'Django-Projects'
Plugin 'Valloric/vim-operator-highlight'
Plugin 'vim-scripts/winmanager'
"Plugin 'vim-scripts/bufexplorer.zip'
"When navigating in NERDTree, select file or directory, press 'm' key, and NERDTree menu will appear. Press 'x' then to execute system default application for selected file/directory, using this plugin. "You can open your favourite image editor for images, pdf reader for pdfs etc.
Plugin 'ivalkeen/nerdtree-execute'

Bundle 'jistr/vim-nerdtree-tabs'

" vim-scripts repos  （vim-scripts仓库里的，按下面格式填写）
Bundle 'L9'
Bundle 'FuzzyFinder'
"Bundle 'genutils'
Bundle 'minibufexplorerpp'
" non github repos   (非上面两种情况的，按下面格式填写)
Bundle 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on     " required!   /** vimrc文件配置结束 **/
"To gnore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo 
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"   
" see :h vundle for more details or wiki for FAQ 
" Put your non-Plugin stuff after this line

" NOTE: comments after Bundle command are not allowed..

"you complete me
"在注释中提示

nnoremap <F4> :YcmForceCompileAndDiagnostics<CR>
nnoremap <F2> :YcmCompleter GoTo<CR>
"nnoremap <F3> :YcmCompleter GoToDefinition<CR>
let g:ycm_complete_in_comments = 1
"自动关闭提示窗口
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

"语义提示快捷键 ctrl+space
"let g:ycm_key_invoke_completion = '<C-Space>'

let g:ycm_key_invoke_completion = '<c-y>'
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"决定了在导入配置时是否需要手动确认。设置为0后YCM就不会老是在启动vim的时候
"来烦你了
let g:ycm_confirm_extra_conf = 0
"let g:ycm_extra_conf_globlist = [


"显示相关配置
set cul "高亮光标所在行
"set cuc
color ron
"autocmd InsertEnter * se cul    " 用浅色高亮当前行 
"set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
set scrolloff=5     " 光标移动到buffer的顶部和底部时保持3行距离  

set laststatus =2
" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif
" 自动缩进
set smartindent
set smarttab
set autoindent
set cindent
" Tab键的宽度
set expandtab
set tabstop=4
" " 统一缩进为4
set softtabstop=4
set shiftwidth=4
"replate tab by four spaces
nmap tt :%s/\t/    /g<CR>
set sm
set sw=4
set ts=4
" 显示行号
set number
" " 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch
set hlsearch
set incsearch
"always show status line
set cmdheight=2
filetype indent on
syntax enable


"""""""""""""""""""""""""""""""

"" winManager setting

"""""""""""""""""""""""""""""""

"设置界面分割
" 
"let g:winManagerWindowLayout = "FileExplorer|TagList"
"let g:winManagerWindowLayout = "TagList|BufExplorer"
"设置winmanager的宽度，默认为25
"let g:winManagerWidth = 30
"           
"定义打开关闭winmanager按键
"            
"nmap <silent> <F8> :WMToggle<cr>




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.c,*.cc,*.cpp,*.[ch],*.sh,*.rb,*.java,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "") 
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "") 

    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
        call append(line(".")+1, "")

    elseif &filetype == 'mkd'
        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "	> File Name: ".expand("%")) 
        call append(line(".")+1, "	> Author: ") 
        call append(line(".")+2, "	> Mail: ") 
        call append(line(".")+3, "	> Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if expand("%:e") == 'cpp'
        "call append(line(".")+6, "#include<iostream>")
        "call append(line(".")+7, "using namespace std;")
        "call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        "call append(line(".")+6, "#include<stdio.h>")
        "call append(line(".")+7, "")
    endif
    if expand("%:e") == 'h'
        call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H")
        call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H")
        call append(line(".")+8, "#endif")
    endif
    if &filetype == 'java'
        "call append(line(".")+6,"public class ".expand("%:r"))
        "call append(line(".")+7,"")
    endif
    "新建文件后，自动定位到文件末尾
endfunc 
autocmd BufNewFile * normal G


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nmap <silent> <F9> <ESC>:Tlist<RETURN>
" shift tab pages
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
map! <C-Z> <Esc>zzi
map! <C-O> <C-Y>,
map <C-A> ggVG$"+y
"自动排版，自动缩进 也可以用 gg, v, G, =
map <F12> gg=G
map <C-w> <C-w>w
"imap <C-k> <C-y>,
imap <C-t> <C-q><TAB>
imap <C-j> <ESC>
" " 选中状态下 Ctrl+c 复制
map <C-v> "*pa
imap <C-v> <Esc>"*pa
imap <C-a> <Esc>^
imap <C-e> <Esc>$
vmap <C-c> "+y
set mouse=v
imap jj <esc>
"制定英文逗号作为leader 键	
let mapleader=","
"按F9，就可以关闭自动缩进,再按打开
set pastetoggle=<F8>

"列出当前目录文件
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC> :NERDTreeToggle<CR>
"打开树状文件目录  
map <C-F3> \be  
" cancel high light after gd or search patterns
map gc :nohl<CR>
"打开语法高亮
map gl :syn on<CR>
"switch between opened files
"close file with  bd rather than q or x because minibuf confilct with ycm
nmap <tab> :bn<CR>

"代码格式优化化
"
map <F6> :call FormartSrc()<CR><CR>
"
""定义FormartSrc()
func FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""实用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"自动保存
set autoread
set autowrite
set cursorline              " 突出显示当前行
set magic                   " 设置魔术
set mouse=a
" 在被分割的窗口间显示空白，便于阅读
" set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"当打开vim且没有文件时自动打开NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
"" 只剩 NERDTree时自动关闭
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" 设置当文件被改动时自动载入


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name" " 按照名称排序
let Tlist_Use_Right_Window = 1 " 在右侧显示窗口
let Tlist_Compart_Format = 1 " 压缩方式
"let Tlist_Exist_OnlyWindow = 1 " 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_File_Fold_Auto_Close = 0 " 不要关闭其他文件的tags
" ""let Tlist_Enable_Fold_Column = 0 " 不要显示折叠树
" "let Tlist_Show_One_File=1 "不同时显示多个文件的tag，只显示当前文件的
" "设置tags
set tags=tags
set autochdir
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "其他东东
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "默认打开Taglist
" let Tlist_Auto_Open=0
" """"""""""""""""""""""""""""""
" " Tag list (ctags)
" """"""""""""""""""""""""""""""""
:set tags=./tags,/usr/include/tags,/usr/local/include/tags
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
" " minibufexpl插件的一般设置
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
"let g:miniBufExplForceSyntaxEnable =1
"关闭minibuf时着色消失，这里自动打开
autocmd BufUnload *.cpp,*.cc,*.c,*.h :syn on
"autocmd FocusGained  *.cpp,*.cc,*.c,*.h :syn on
nmap tl :Tlist<cr>

"ctrlp设置 -find files and names in buffer
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
"ctrlp extensions ctrlp funky
let g:ctrlp_extensions = ['funky']

" show match scopes
let g:indentLine_char = '┊'
let g:indentLine_color_term =239


let NERDTreeShowHidden=1

let NERDTreeShowLineNumbers=1
let NERDTreeDirArrows=1
"let g:nerdtree_tabs_open_on_console_startup=1
map <Leader>n <plug>NERDTreeTabsToggle<CR>

