# run before import
# sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

export ZSH="/Users/ntrotner/.oh-my-zsh"

ZSH_THEME="half-life"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git node docker docker-compose npm history-substring-search zsh-autosuggestions zsh-syntax-highlighting)

alias ls="ls -l"

source $ZSH/oh-my-zsh.sh
