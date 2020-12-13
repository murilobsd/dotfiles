# git
. ~/.ksh/git.ksh

# export VIM=vim
export VIMRUNTIME=/usr/local/share/vim/vim82
export EDITOR=vi
export FCEDIT=$EDITOR
export PAGER=less
export LESS='-iMRS -x2'
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1
export BROWSER='firefox'
export GPG_TTY=$(tty)
export TERM='xterm-256color'
export VISUAL='vi'
export PS1='\W $(__git_ps1 "(%s)") '
export LSCOLORS=ExGxfxcxBxegehbhbgacad
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

set -o emacs

t() { tmux new -DAs 0; }
g() { test -n "$1" && a=$(rg "$1" | sx | cut -d: -f1) && test -n "$a" && vim "$a"; }
aria()  { mkdir -p "$HOME/downloads" && (cd "$HOME/downloads" && aria2c "$1"); }

# kovi
alias rental='mycli -d rental-prod'
alias hermes='pgcli -D hermes-prod'

# use colorls if it's installed, plain old ls otherwise
if command -v colorls > /dev/null ; then
  LS='colorls'
else
  LS='ls'
fi

# commons
alias ls="$LS -FHh"
alias cp='cp -i'
alias l="ls -aF"
alias ll="ls -lahF"
alias mv='mv -i'
alias rm='rm -i'
alias ..='cd ..'
alias pu='ps -U $USER'
alias md='mkdir -p'
alias hi='fc -l'
alias df='df -h'
alias du='du -ch'
alias cat='bat -pp --theme="Solarized (light)"'
alias grep='rg'

# py
alias nenv='python3 -m venv venv'
alias aenv='. ./venv/bin/activate'
alias renv='rm -rf venv'

alias ga='git add --all'
alias gap='git add --all -p'
alias gc='git commit'
alias gd='git diff'
alias gf='git commit --amend --no-edit'
alias gl='git log --oneline -30'
alias gp='git push'
alias gpf='git push -f'
alias gr='git rebase -i HEAD~20'
alias gs='git status -sb'
alias gpl='git pull'

alias a="vi \$HOME/.zshrc && . \$HOME/.zshrc"
