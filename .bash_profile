# List the contents of the folder after choosing the dir
chooseAndList()
{
    cd $@
    ls -la
}

alias gits='git status'
alias gita='git add'
alias gitc='git commit'
alias gitd='git diff'
alias gitr='git reset'

alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
alias sapt='sudo apt'
alias sapti='sudo apt install'

alias ovpnc='sudo openvpn --daemon --askpass --config $HOME/ovpns/raspvpn.ovpn'

alias umlet='java -jar ~/.jarfiles/Umlet/umlet.jar'

# alias cd='cd $@ & ls -la'
alias c='chooseAndList'

export SWT_GTK3=0
export MYVIMRC='~/.vimrc'

export PATH="$PATH:/opt/mssql-tools/bin:~/dotfiles/scripts:~/.jarfiles:~/.local/bin:/usr/share/arduino/hardware/arduino/cores/arduino/"

export BRIGHTNESS=10

export VIMINIT='source $MYVIMRC'
export MYVIMRC='~/.config/nvim/init.vim'


export EDITOR=vim

export FZF_DEFAULT_OPTS='
  --color dark,fg+:#fdf6e3,hl:#fdf6e3,hl+:#fdf6e3,bg+:#657b83,info:#657b83
'

# export SHELL=/usr/bin/fish

# export https_proxy='127.0.0.1:9150'
# export http_proxy='127.0.0.1:9150'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/minihive/.sdkman"
[[ -s "/home/minihive/.sdkman/bin/sdkman-init.sh" ]] && source "/home/minihive/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

compton &>/dev/null &
