# enable vi mode
set -o vi

# general aliases
alias ..="cd .."
alias bv="bumpversion"
alias cnpm="npm --registry=https://registry.npm.taobao.org --cache=${HOME}/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=${HOME}/.cnpmrc"
alias conf="vim ~/.profile"
alias la="/bin/ls -ah"
alias ll="/bin/ls -lh"
alias ls="/bin/ls"
alias reload="source ~/.profile"
alias ta="tmux attach"
alias vi="vim"

# brew aliases
alias bc="brew cask"
alias bi="brew install"

# git aliases
alias g="git"
alias gc="git remote show | xargs -I{} git remote prune {} && git gc"
alias lg="git logg"
alias lgs="git logs"

# blog alias
alias bd="bash ~/blog/deploy.sh"

# go aliases
alias gmt="go mod tidy"
alias gfm="go fmt"
gguv() { go get -u -v github.com/$1; }

# python/pip/pipenv aliases
alias pi="python -m pip"
alias pii="python -m pip install"
alias piiu="python -m pip install -U"
alias pilo="python -m pip list --outdated"
alias pip="python -m pip"
alias pm="python manage.py"
alias ppm="pipenv run python manage.py"
alias pr="pipenv run"
alias psi="python setup.py install"
alias pv="pipenv"
alias pvsd="pipenv sync --dev"
alias pvud="pipenv update --dev && pipenv clean"

alias jsonify="python -mjson.tool"

# make aliases
alias m="make"
alias mb="make build"
alias mt="make test"

# docker aliases from tcnksm/docker-alias
alias d="docker"
alias dc="docker-compose"
alias dex="docker exec -i -t"
alias di="docker images"
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias dkd="docker run -d -P"
alias dki="docker run -i -t -P --rm"
alias dl="docker ps -l -q"
alias dpsa="docker ps -a"
alias dps="docker ps"
alias drminone="docker images | grep none | tr -s ' ' | cut -d' ' -f3 | xargs -I{} docker rmi {}"
alias dspf="docker system prune -f"
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }
dbu() { docker build -t=$1 .; }
dri() { docker rmi $(docker images -q); }
drm() { docker rm $1; }
drmf() { docker stop $1; docker rm $1; }
dstop() { docker stop $(docker ps -a -q); }

# kubectl aliases
alias k="kubectl"
alias kaf="kubectl apply -f"
alias kak="kubectl apply -k"
alias kc="kubectl config"
alias kd="kubectl describe"
alias kdel="kubectl delete"
alias ke="kubectl edit"
alias kex="kubectl exec -it"
alias kg="kubectl get"
alias kga="kubectl get all"
alias kgns="kubectl get ns"
alias kgp="kubectl get pods -o wide"
alias kl="kubectl logs --tail=100 -f"
alias kr="kubectl rollout"
alias krr="kubectl rollout restart"
alias krs="kubectl rollout status"
alias kt="kubectl top"

# --- --- --- #

# set path
export PIPENV_VERBOSITY=-1
export BASH_SILENCE_DEPRECATION_WARNING=1
export EDITOR=vim
export LANG=en_US.UTF-8
export KUBECONFIG=~/.kube/config
export CLICOLOR=1

if command -v pyenv &> /dev/null;
then
  eval "$(pyenv init -)"
fi


# set yy env
alias yy="cd ~/yy"
export GOROOT=/usr/local/Cellar/go/1.15/libexec
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export GO111MODULE=on
export GOPROXY=direct
export GOSUMDB=off
export GOPROXY="https://goproxy.ihago.net,direct"
export GOPRIVATE="*.git.yy.com"

# yy project alias
alias mars="cd ~/yy/hago-money-api-marsfight"
alias pmars="cd ~/yy/proto-hago-money-api-marsfight"
