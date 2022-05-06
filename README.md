# 工作流配置

## scripts

### init_mac.sh 初始化mac配置

> init_mac.sh脚本中会自动获取config目录下的配置(.zshrc, .gitconfig)覆盖本地

  1. 打开terminal终端

  2. 执行脚本
  ```
    cd $HOME/Desktop && curl -o- https://github.com/csh1314/workflow/blob/main/script/init_mac.sh | bash
  ```