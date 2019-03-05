export ZSH=/Users/naoki/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# rbenv(rubyのver管理)のパス通す
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init - zsh)"
export CC=/usr/bin/gcc-4.2

# bin / sbinへのパスを通す
PATH=$PATH:$HOME/bin
PATH=$PATH:/sbin

# gccの設定
export CC=/usr/bin/gcc

# 文字コードの指定
export LANG=ja_JP.UTF-8

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# cdなしでディレクトリ移動
setopt auto_cd

# ビープ音の停止
setopt no_beep

# ビープ音の停止(補完時)
setopt nolistbeep

# cd -<tab>で以前移動したディレクトリを表示
setopt auto_pushd

# ヒストリ(履歴)を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_dups

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# キーバインディングをemacs風に(-vはvim)
bindkey -e
# bindkey -v

# zsh-completionsの設定
fpath=(/path/to/homebrew/share/zsh-completions $fpath)

autoload -U compinit
compinit -u

#--------------alias---------------

#Linux
alias szr='source ~/.zshrc'
alias be='bundle exec'

# rails
alias rc='bundle exec rails c'
alias rs='bundle exec rails s'
alias rs4='bundle exec rails s -p 4000'
alias rs5='bundle exec rails s -p 5000'
alias bi='bundle install  --path vendor/bundle'
alias sps='spring stop'
alias bsp='bin/spring'
alias sp='bin/rspec --format documentation'
alias spq='bin/rspec-queue spec --format documentation'
alias rgc= 'bundle exec rails g controller'
alias rgm= 'bundle exec rails g model'

# rake
alias rr='bundle exec rake routes'
alias rdd='bundle exec rake db:drop'
alias rdc='bundle exec rake db:create'
alias rdm='bundle exec rake db:migrate'
alias rdr='bundle exec rake db:rollback'
alias rds='bundle exec rake db:seed_fu'

# tmux
alias tm='tmux'
alias tls='tmux ls'
alias tlc='tmux lsc'
alias tks='tmux kill-session'

# tig
alias t='tig'
alias ts='tig status'

# dig
alias dig='dig @8.8.8.8'
export ANDROID_HOME=/Users/naoki/Library/Android/sdk
export PATH=$ANDROID_HOME/bin:$PATH
export PATH=$PATH:/Users/naoki/Library/Android/sdk/platform-tools
export LDFLAGS="-L/usr/local/opt/libffi/lib"
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
