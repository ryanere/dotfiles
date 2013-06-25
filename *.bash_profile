export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
export BUNDLER_EDITOR=sublime

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export AWS_ACCESS_KEY_ID=AKIAJCFQ7HGKUSKRHQKA
export AWS_SECRET_ACCESS_KEY=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

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi


function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo " *"
}

export PS1='\[\033[01;35m\]\W\[\033[01;37m\]$(__git_ps1 " %s")\[\033[00m\]$(parse_git_dirty) '


alias work="cd ~/Sites/work; ls"
alias personal="cd ~/Sites/personal; ls"

alias rake="bundle exec rake"
alias rails="bundle exec rails"

alias show="defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder"

alias sublime="open /Applications/Sublime\ Text\ 2.app/"

