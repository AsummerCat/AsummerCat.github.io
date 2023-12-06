#!/usr/bin/env bash
echo "进入源文件-git目录";
cd /home/AsummerCatHexo;
echo "拉取最新代码";
sleep 2s;
sudo git pull;
echo "进行hexo 操作";
hexo clean && hexo g && hexo d
sleep 2s;
echo "进入编译-git目录";
cd /home/AsummerCat.github.io;
echo "拉取最新代码";
sudo git pull;
sleep 2s;
echo "nginx 重启";
sudo nginx -s reload;
sleep 2s;
echo "完成";