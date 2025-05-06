if [[ -z $ZSH_THEME_CLOUD_PREFIX ]]; then
    ZSH_THEME_CLOUD_PREFIX='☁'
fi

function git_prompt_dir() {
  local repo_path=$(git rev-parse --show-toplevel 2>/dev/null)
  if [[ -n "$repo_path" ]]; then
    local current_path=$(pwd)
    if [[ "$current_path" == "$repo_path" ]]; then
      echo "%1~"  # 在git仓库根目录只显示一级
    else
      echo "%2~"
    fi
  else
    echo "%2~"  # 非git仓库显示两级
  fi
}

PROMPT='%{$fg_bold[cyan]%}$ZSH_THEME_CLOUD_PREFIX %{$fg_bold[green]%} %{$fg[green]%}$(git_prompt_dir) %{$fg_bold[cyan]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}] %{$fg[yellow]%}⚡ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"
