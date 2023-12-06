#!/bin/bash
echo "进入指定git目录";
cd /home/AsummerCat.github.io;
echo "拉取最新代码";
sudo git pull;
sleep 2s;
echo "nginx 重启";
sudo nginx -s reload;
sleep 2s;
echo "完成";