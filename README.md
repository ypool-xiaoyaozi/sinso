# sinso

#### 介绍
半自动部署sinso项目,一台机器部署50个以上，参考曾经的bzz项目。

#### 安装教程

1.  安装sinso的客户端
    sudo -i
    &&    wget https://github.com/sinsoio/mine_publish/archive/refs/tags/v1.1.0.tar.gz
    &&    tar -xf v1.1.0.tar.gz
    &&    cd mine_publish-1.1.0/ 
    &&    chmod 755 sinso  
2.  mkdir /data 
3.  git clone https://gitee.com/xiaoyaozi123/sinso.git
4.  cd sinso && sudo chmod +x sin.sh sin_for.sh
5.  执行脚本 ./sin.sh
    半自动添加完相应的私钥，最后执行./sin_for.sh 关于测试链，本人是自己在本机自己同步一条测试链
6.  输入相应的数字不能写重复的数字，如果需要写重复的数字删除/data 下面对应的目录
7.  按照提示输入节点的私钥可开始挖矿，建议使用空白没有其他资产的私钥。并且定期领取SIN测试币，燃料烧干之后就没有收益了
