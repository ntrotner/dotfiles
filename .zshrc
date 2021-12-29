# install oh my zsh
# run before import
# sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

export ZSH="$HOME/.oh-my-zsh"

export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export CGO_ENABLED=0
export GOMAXPROCS=4

ZSH_THEME="half-life"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git node deno docker docker-compose npm history-substring-search zsh-autosuggestions zsh-syntax-highlighting copyfile golang)

alias ls="ls -lh"
alias vim="nvim"
alias swagger="docker run --rm -it  --user $(id -u):$(id -g) -e GOPATH=$HOME/go:/go -v $HOME:$HOME -w $(pwd) quay.io/goswagger/swagger"
alias python="python3"
export PATH=~/.npm-global/bin:$PATH
export PATH=$HOME/.deno/bin/:$PATH

source $ZSH/oh-my-zsh.sh
