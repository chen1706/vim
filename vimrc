runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
Helptags

" 基本配置
set ai!                     " 设置自动缩进
set nu!                     " 显示行号
set ruler                   " 在右下角显示光标的坐标
set cindent                 " 使用C语言的规则自动缩进
set showcmd                 " 在ruler左边显示当前正在输入的命令
set hlsearch                " 开启高亮显示结果
set expandtab               " 将tab键改为空格，默认是8个
set tabstop=4               " 设置tab键的宽度
set showmatch               " 显示括号配对情况
set incsearch               " 开启实时搜索功能
set nowrapscan              " 搜索到文件两端时不重新搜索
set cursorline              " 突出显示当前行
set autoindent              " 自动对齐
set smartindent             " 智能自动缩进
set backspace=2             " 设置退格键可用
set shiftwidth=4            " 自动缩进时，使用4个空格，默认是8个
"set hidden                 " 允许在有未保存的修改时切换缓冲区
"set list                   " 显示Tab符，使用一高亮竖线代替
syntax enable               " 打开语法高亮
syntax on                   " 开启文件类型侦测
filetype on                 " 
filetype indent on          " 针对不同的文件类型采用不同的缩进格式
filetype plugin on          " 针对不同的文件类型加载对应的插件
set nobackup                " 设置无备份文件
set nocompatible            " 不使用vi兼容的模式
set cc=80                   " 80字符界限

set enc=utf-8               " 设置编码
set fenc=utf-8              " 设置文件编码
" 设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

" NERDTREE插件配置
let NERDTreeWinSize=24
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
nmap <F2> <ESC>:NERDTreeToggle<RETURN>

" php 缩进
let PHP_vintage_case_default_indent=1
colorscheme jellybeans

" PHP documenter script bound to Control-P
autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR> 
let g:pdv_cfg_Author = "chenchuanbao <chenchuanbao@youku.com>"

" taglist
let Tlist_Auto_Open=1 "设置启动vim后，自动打开taglist窗口
let Tlist_File_Fold_Auto_Close=1 "只显示当前文件tag，其它文件的tag都被折叠起来
let Tlist_Show_One_File=1 "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow=1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window=1 "在右侧窗口中显示taglist窗口

" PHP 自动完成
" 设置自动完成的监听方式：尾部添加一个字母和清除一个字母
set complete-=k complete+=k
" 设置字典补全文件
set dictionary=$HOME/.vim/bundle/vim-php-dict/php.dict
" 使用 tab 键自动完成或尝试自动完成
function! InsertTabWrapper()
    let col=col('.')-1
    if !col || getline('.')[col-1] !~ '\k'
        return "\<TAB>"
    else
        return "\<C-N>"
    endif
endfunction
" 重新映射 tab 键到 InsertTabWrapper 函数
inoremap <TAB> <C-R>=InsertTabWrapper()<CR>
