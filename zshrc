# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

alias ll="ls -la"
alias copy="xclip -sel clip"

alias -s py=vim
alias -s sage=vim

export ZSH=$HOME/.zsh
export PATH=$PATH:/snap/bin
export HISTSIZE=10000
HISTFILE=~/.zsh_history
HISTDUP=erase
export SAVEHIST=10000
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt hist_save_no_dups
setopt hist_ignore_dups

setopt appendhistory
setopt sharehistory
setopt incappendhistory

# git setup
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'


source "$ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZSH/plugins/zsh-extract/extract.plugin.zsh"
source "$ZSH/plugins/zsh-z/zsh-z.plugin.zsh"
source "$ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$ZSH/plugins/zsh-you-should-use/you-should-use.plugin.zsh"
source "$HOME/powerlevel10k/powerlevel10k.zsh-theme"
source "$ZSH/plugins/websearch/web-search.plugin.zsh"
fpath=($ZSH/zsh-completions/src $fpath)
# zsh-z plugin options
ZSH_CASE=smart # lower case patterns are treated as case insensitive
zstyle ':completion:*' menu select # improve completion menu style

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
