# If you come from bash you might have to change your $PATH.
# 配置 npm 家目录
compctl -g '~/.itermocil/*(:t:r)' itermocil
# 打开特定工作站
alias _iw='itermocil walle'   
alias ff="fvm flutter"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$HOME/fvm/default/bin:$HOME/bin:/usr/local/bin:$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export EDITOR='code --wait'
# nvm
export NVM_DIR="$HOME/.nvm"
 [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
 [[ -r $NVM_DIR/bash_completion ]] && \. $NVM_DIR/bash_completion

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME=pygmalion

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git extract z nvm npm)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias _mntfs="mount_ntfs.sh"
alias _nb="npm run blog:new"


# oc 快捷打开将chrome应用
alias oc="open -a 'google chrome'"
alias fa="alias | grep"
alias _sp="save_pass"
alias _gp="get_pass"
alias gstsa="git stash --all"


function _fw() { open dict://"'$*'"} 
alias _d="_fw"

# 安装最新的 node
alias _inv="nvm install node --reinstall-packages-from=node"

# 创建 git ignore 文件
function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}
# node 进程
function wheresmyfuckingdevsites {
  lsof -nPV -i4TCP | grep node  | awk '{ print $2 "\t" $9 "\t" system("lsof -a -p " $2 " -d cwd -n | tail -1 | awk \"{print $NF}\"") }'
}
# npm
alias cnpm="npm --registry=http://npm.devops.xiaohongshu.com:7001 \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/mirrors/node \
--userconfig=$HOME/.cnpmrc"
# 打开 simulator
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'
# 同步其他配置


source ~/.bash_profile
