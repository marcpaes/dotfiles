# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

# History settings
export HISTIGNORE="&:ls:[bf]g:exit:reset:clear:cd:cd ..:cd..:zh:cp:vim:mv"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

#FZF
export FZF_PATH="$HOME/.fzf"
export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"

[[ -f ~/.fzf/fzf.zsh ]] && source ~/.fzf/fzf.zsh

plugins=(git zsh-nvm docker docker-compose dotenv kubectl npm fzf fzf-tab tmux)

RPS1='$(kubectx_prompt_info)'

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# Alias
alias cat='bat'
alias k='kubectl'

# ls
TREE_IGNORE="cache|log|logs|node_modules|vendor"

alias ls=' exa --group-directories-first'
alias la=' ls -a'
alias ll=' ls --git -la --git'
alias lt=' ls --tree -D -L 2 -I ${TREE_IGNORE}'
alias ltt=' ls --tree -D -L 3 -I ${TREE_IGNORE}'
alias lttt=' ls --tree -D -L 4 -I ${TREE_IGNORE}'
alias ltttt=' ls --tree -D -L 5 -I ${TREE_IGNORE}'

alias tmp=' cd $(mktemp -d)'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(direnv hook zsh)"
