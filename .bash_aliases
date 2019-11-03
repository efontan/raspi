# Git aliases
alias pull='git pull origin'
alias push='git push origin'
alias merge='git merge'

# show open ports
alias ports='netstat -tulanp'

# MAVEN aliases
function updatePomVersions() {
    mvn versions:set -DgenerateBackupPoms=false -DnewVersion=$1
}
alias updateMavenPoms=updatePomVersions;

alias dpkgResolvconf='~/dotfiles/scripts/updateResolvConf.sh'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Mkdir and cd into new dir
function mkcd {
  command mkdir $1 && cd $1
}
