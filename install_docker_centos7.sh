#!/bin/bash
yum remove -y docker \
              docker-common \
              docker-selinux \
              docker-engine

yum install -y yum-utils \
     device-mapper-persistent-data \
     lvm2

yum-config-manager \
         --add-repo \
         https://download.docker.com/linux/centos/docker-ce.repo

yum-config-manager --enable docker-ce-edge
yum-config-manager --enable docker-ce-test
yum install -y docker-ce
systemctl start docker
#测试安装是否正确
docker -v
