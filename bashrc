# colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

source ~/.git-prompt.sh

# git autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PS1="\$(__git_ps1)\n\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]: "

#alias ls='ls -GFh'
#alias ru='rspec spec/unit'
#alias ri='rspec spec/integration'
#alias rr='ru;ri'
#alias zr='zeus ruby '
#alias zs='zeus spec '
#alias za='zeus acceptance '
#alias vv='vim ~/.vimrc'
#alias vb='vim ~/.bashrc'
#alias fix_js='rm -rf ./node_modules'
#alias gdc='git diff --cached'
#alias gd='git diff'
#alias gco='git checkout'
#alias gs='git st'

source $(brew --prefix nvm)/nvm.sh
export NVM_DIR=~/.nvm
nvm use 0.10
