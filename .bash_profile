# Path Modifications
# Add user home directory to path
export PATH="$HOME/bin:$PATH"

# Postgres
export PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# ===========================================

# Display current git branch in command prompt
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Color declarations
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[0;34m\]"
NO_COLOR="\[\033[0m\]"

PS1="$BLUE\T $GREEN$NO_COLOR\w$YELLOW\$(parse_git_branch)$NO_COLOR > "

# Alias for hub
eval "$(hub alias -s)"

# Git auto complettion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# scala
export SCALA_HOME="/usr/local/share/scala"
export PATH="$PATH:$SCALA_HOME/bin"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source ~/.env
