# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# zsh plugins
plugins=(git
	zsh-autosuggestions
	zsh-syntax-highlighting)
# Syntax highlighting needs to be the last plugin sourced

# Aliases
alias tls="tmux ls"
alias glg="git log --graph --decorate --stat"
alias glog="git log --graph --decorate --all"

# Changing Default Text Editor
export EDITOR=/home/arjun/bin/nvim

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fixes bug on starting terminal
unset ZSH_AUTOSUGGEST_USE_ASYNC
