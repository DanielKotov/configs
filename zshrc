# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

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

autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# git setup
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'


source "$ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZSH/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "$ZSH/zsh-extract/extract.plugin.zsh"
source "$ZSH/zsh-z/zsh-z.plugin.zsh"
source "$ZSH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$ZSH/plugins/zsh-you-should-use/you-should-use.plugin.zsh"
source "$HOME/powerlevel10k/powerlevel10k.zsh-theme"
fpath=($ZSH/zsh-completions/src $fpath)
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
