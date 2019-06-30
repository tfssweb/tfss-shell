#!/bin/bash
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
#给docker-compose执行权限
sudo chmod +x /usr/local/bin/docker-compose
#测试安装是否成功，成功的话打印出docker-compose的版本信息
docker-compose --version
