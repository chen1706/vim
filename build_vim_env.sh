#!/bin/sh                                                                                                                               |   " Press <F1> to display hel
#此脚本基于git配置个人用户的vim环境                                                                                                     |   
pwd=`pwd`                                                                                                                               |-  build_vim_env.sh (/root)   
                                                                                                                                        |   
echo $pwd                                                                                                                               |   ~                          
                                                                                                                                        |   ~                          
#创建.vim文件夹                                                                                                                         |   ~                          
if [ ! -d $pwd/.vim ];then                                                                                                              |   ~                          
    mkdir $pwd/.vim                                                                                                                     |   ~                          
else                                                                                                                                    |   ~                          
    mv $pwd/.vim $pwd/vim_back                                                                                                          |   ~                          
fi                                                                                                                                      |   ~                          
                                                                                                                                        |   ~                          
#备份.vimrc文件夹                                                                                                                       |   ~                          
if [ -f $pwd/.vimrc ];then                                                                                                              |   ~                          
    mv $pwd/.vimrc $pwd/vimrc                                                                                                           |   ~                          
fi                                                                                                                                      |   ~                          
                                                                                                                                        |   ~                          
#确保已经安装了git                                                                                                                      |   ~                          
git clone git://github.com/chen1706/vim.git $pwd/.vim                                                                                   |   ~                          
                                                                                                                                        |   ~                          
ln -nsf $pwd/.vim/vimrc $pwd/.vimrc                                                                                                     |   ~                          
                                                                                                                                        |   ~                          
cd $pwd/.vim                                                                                                                            |   ~                          
                                                                                                                                        |   ~                          
git submodule init                                                                                                                      |   ~                          
git submodule update                                                                                                                    |   ~                          
                                                                                                                                        |   ~                          
echo 'export TERM=xterm-256color' >> $pwd/.bashrc                                                                                       |   ~                          
                                                                                                                                        |   ~                          
source $pwd/.bashrc

exit 0
