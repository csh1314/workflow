#!/usr/bin/env bash

#######################################
# 初始化 mac 脚本
######################################## 配置项

# docker 设置只显示运行图标
# defaults write com.apple.dock static-only -boolean false
killall Dock

# 设置在左侧 也支持 bottom,right,left
defaults write com.apple.Dock orientation -string left
killall Dock

# 安装 mac 命令行工具链
xcode-select --install

# 安装 oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# 覆盖本地配置
curl https://github.com/csh1314/workflow/blob/main/config/.zshrc >~/.zshrc
curl https://github.com/csh1314/workflow/blob/main/config/.gitconfig >~/.gitconfig

# 注意用户名确保和邮箱名相同
git config --global user.name $USER
git config --global user.email $USER@xiaohongshu.com


# 安装 brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# 安装二进制应用,自行选择安装工具
# python
# wget  下载网页内容工具
# mycli 命令行连接 mysql 工具
# xz  解压和压缩工具
# shfmt  shell 格式化工具
# tree  查看文档树工具
# jq 命令行处理 json 工具
# itermocil 保存终端基础配置
brew install python wget mycli xz shfmt tree jq nvm itermocil

# 安装 GUI 应用
# iterm2  虚拟终端工具
# visual-studio-code  编辑器
# wechatwebdevtools  微信开发者工具
# google-chrome chrome 浏览器
# firefox 火狐浏览器
# xmind-zen 画图工具
# youdaodict  有道词典
# libreoffice mac 些开源文档工具支持 excel word 等
# licecap gif 截屏工具
# paintbrush mac 绘画工具
# postman 接口调试工具
# free-ruler 像素测量工具
# spectacle  屏幕控制
# cheatsheet  屏幕快捷键
# teamviewer  桌面控制
# charles  代理
# rar 解压工具
# sogouinput 搜狗输入法
brew reinstall iterm2 rar visual-studio-code google-chrome wechatwebdevtools firefox xmind-zen youdaodict libreoffice licecap paintbrush postman spectacle cheatsheet teamviewer charles sogouinput


# 安装最近版本 node 相关工具安装
nvm install --lts  
# 安装 npmrc 管理 registry
npm i -g npmrc
# 设置 registry 为 小红书
npmrc -c xhs && npm config set registry http://npm.devops.xiaohongshu.com:7001
npmrc xhs
# 安装内部全局工具
npm i -g @xhs/formula-cli lerna
