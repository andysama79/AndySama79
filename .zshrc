eval "$(starship init zsh)"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/schecter/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/schecter/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/schecter/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/schecter/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /home/schecter/.zsh/fast-syntax-highlighting/F-Sy-H.plugin.zsh

source /home/schecter/.zsh/completion.zsh

autoload -Uz compinit

typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

zmodload -i zsh/complist

source /home/schecter/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


source /home/schecter/.zsh/history.zsh

alias ls='ls -G'
source /home/schecter/.zsh/key-bindings.zsh
source /home/schecter/.zsh/aliases.zsh
clear
