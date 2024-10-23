# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9#

export ZSH=$HOME/.zsh
export PATH=$PATH:/snap/bin

export HISTSIZE=10000
export SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS



source "$HOME/.zsh/themes/spaceship-prompt/spaceship.zsh"
source "$ZSH/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZSH/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
source "$ZSH/zsh-extract/extract.plugin.zsh"
fpath=($ZSH/zsh-completions/src $fpath)


SPACESHIP_PROMT_ORDER=(
    time
    user
    host
    dir
    git
    docker
    exec_time
    vi_mode
    jobs
    exit_code
    char
)
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
