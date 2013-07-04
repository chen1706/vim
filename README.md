![pic](http://113.11.199.133/pic.png)

##vim配置检出
* $ git clone https://github.com/chen1706/vim.git ~/.vim  或者采用 git clone git://github.com/chen1706/vim.git
* $ ln -s ~/.vim/.vimrc ~/.vimrc
* $ cd ~/.vim
* $ git submodule init
* $ git submodule update

* cd 
* vim .bashrc
* export TERM=xterm-256color


##插件更新
$ cd ~/.vim/bundle/xxx && git pull origin master                # 更新某个插件
$ cd ~/.vim/ && git submodule foreach git pull origin master    # 更新所有插件

##升级插件
$ cd ~/.vim/bundle/xxx && git pull origin master                # 更新某个插件
$ cd ~/.vim/ && git submodule foreach git pull origin master    # 更新所有插件

##删除插件
$ cd ~/.vim && git rm bundle/xxx

##安装cscope与vim插件 （网上的）

* $ sudo apt-get install cscope
* $ curl -so ~/.vim/bundle/cscope/plugin/cscope_maps.vim http://cscope.sourceforge.net/cscope_maps.vim
* $ cscope -Rbkq ~/test/vimtest/zombie_game # 此时在zombie_game文件夹中生成cscope.out文件
* $ vim     

```
# 启动vim(下面都是vim命令)
    :pwd                    # 查看当前vim的工作目录
    :cd ~/workspace         # 改变当前vim的工作目录为workspace
    :cs add ~/test/vimtest/zombie_game/cscope.out ~/test/vimtest/zombie_game    # 添加cscope.out到cscope数据库中，对应路径，否则会出现找不到文件的错误。
    :cs show                # 查看已经连接的数据库
    :cs kill cscope.out     # 断开已经连接的数据库
    :cs f g symbol          # 对应快捷键 Ctrl+]
    Ctrl+] :进入这个函数
    Ctrl+T :返回搜索前的位置
    生成工程的cscope.files并生成cscope.out
    #切换当前vim工作目录为工程目录
    $ cd /path/to/project
    # 搜索当前目录下所有.h、.c、.cpp文件并生成cscope.files文件列表
    $ find . -name '*.php' > cscope.files
    $ cscope -b
    # 根据cscope.files生成cscope.out数据库文件
    $ vim # 在当前工程里启动vim，然后执行下面的命令连接cscope.out数据库，在前面加上的路径是(.)
    :cs add cscope.out .
```
