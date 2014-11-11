export BUNDLER_EDITOR=sublime

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# install first - curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
source ~/.git-prompt
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
alias spec="bundle exec rspec --color --format d"
alias rake="bundle exec rake"
alias rails="bundle exec rails"

