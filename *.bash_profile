export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export NODE_PATH="/usr/local/lib/node"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:$PATH"
export BUNDLER_EDITOR=sublime

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias work="cd ~/Sites/work; ls"
alias personal="cd ~/Sites/personal; ls"

alias portal="cd ~/Sites/work/client_portal; ls"
alias dock="cd ~/Sites/work/loading_dock; ls"
alias website="cd ~/Sites/work/website; ls"
alias websitesetup="bundle exec mm-server;"

alias portalsetup="elasticsearch; redis-server /usr/local/etc/redis.conf; rake db:reset; rake index:rebuild; rake seed:event_stats:fill NETWORK=1 DAYS=90; rails s;"

alias rabbitstart="rabbitmq-server"
alias rabbitstop="rabbitmqctl stop"
alias docksetup="DAEMON_ENV=development bundle exec script/loading_dock"

alias show="defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder"
alias ll="ls -lahG"
alias sublime="open /Applications/Sublime\ Text\ 2.app/"

