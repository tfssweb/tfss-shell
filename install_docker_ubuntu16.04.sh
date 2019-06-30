#!/bin/bash
apt-get remove docker docker-engine docker.io
apt-get update
apt-get install -y \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual
apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# 国外服务器
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
# 国内服务器，可以自行放开
#add-apt-repository \
#   "deb [arch=amd64] https://mirrors.aliyun.com/docker-ce/linux/ubuntu \
#   $(lsb_release -cs) \
#   stable"
apt-get update
apt-get install -y docker-ce
#顺便安装docker-compose
apt-get install -y docker-compose
#测试安装是否正确
docker -v
