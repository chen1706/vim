runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
Helptags

filetype plugin on
syntax on  
"基本配置
set nu "显示行号
set ruler "在右下角显示光标的坐标
set hlsearch "高亮显示搜索结果
set incsearch "边输边搜，即时更新搜索结果
set showcmd "在ruler左边显示当前正在输入的命令
set expandtab "将tab键改为空格，默认是8个
set tabstop=4 "将tab键改为4个空格
set cindent "使用C语言的规则自动缩进
set shiftwidth=4 "自动缩进时，使用4个空格，默认是8个

set enc=utf-8 "设置编码
set fenc=utf-8 "设置文件编码
"设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"NERDTREE插件配置
let NERDTreeWinSize=24
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
nmap <F2> <ESC>:NERDTreeToggle<RETURN>

"php 缩进
let PHP_vintage_case_default_indent=1
colorscheme jellybeans

"PHP documenter script bound to Control-P
autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR> 
let g:pdv_cfg_Author = "chenchuanbao <chenchuanbao@youku.com>"

"taglist
let Tlist_Show_One_File=1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1 "在右侧窗口中显示taglist窗口
