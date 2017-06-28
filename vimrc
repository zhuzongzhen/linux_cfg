syntax on           " 语法高亮
set ruler           " 显示标尺
set helplang=cn
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8

"新建.c,.h,.sh,.java文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头
func SetTitle()
	"如果文件类型为.sh文件
	if &filetype == 'sh'
		call setline(1, "\#!/bin/bash")
	else
		call setline(1, "/********************************************************************")
		call append(line("."), "	> File Name:	".expand("%"))
		call append(line(".")+1, "	> Author:		Austzhu")
		call append(line(".")+2, "	> Mail:			153462902@qq.com.com ")
		call append(line(".")+3, "	> Created Time:	".strftime("%c"))
		call append(line(".")+4, " *******************************************************************/")
		call append(line(".")+5, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+6, "#include <iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include <stdio.h>")
		call append(line(".")+7, "")
	endif
	"新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"列出当前目录文件
map <F3> :tabnew .<CR>
"打开树状文件目录
map <C-F3> \be

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
" 设置在状态行显示的信息
set foldcolumn=0
set foldmethod=indent
set foldlevel=3
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab

" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=100
"禁止生成临时文件
set nobackup
set noswapfile

"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
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
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key
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
"自动补全
:inoremap ( ()<ESC>i
:inoremap { {}<ESC>i
:inoremap [ []<ESC>i
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i

"设置Taglist
let Tlist_Sort_Type = "name"    " 按照名称排序
let Tlist_Use_Right_Window = 0  " 在右侧显示窗口
let Tlist_Compart_Format = 1    " 压缩方式
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags
let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树
let Tlist_Auto_Open=0
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口

"设置tags
set tags=tags;
set autochdir

" 删除行尾空格
nnoremap <leader>f :%s/\s\+$//<cr>
set background=dark


":nnoremap a i
":nnoremap i k
":nnoremap k j
":nnoremap j h

:map! <C-w> <ESC> :po <cr> i
:map  <C-w>       :po <cr>
:map  <C-e>       :tag <C-r>=expand("<cword>") <cr> <cr>
:map! <C-e> <ESC> :tag <C-r>=expand("<cword>") <cr> <cr> i
