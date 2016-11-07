#aliasの設定

#rails系alias
alias rs='bin/rails s'
alias e='exit'
alias e!='exit!'
alias bi='bundle install'

#rake系alias
alias rdc='bundle exec rake db:create'
alias rdm='bundle exec rake db:migrate'
alias rdd='bundle exec rake db:drop'
alias rds='bundle exec rake db:seed_fu'
alias rdr='bundle exec rake db:rollback'
alias rr='bundle exec rake routes'
alias resetdb='bundle exec rake db:drop rake db:create rake db:migrate rake db:seed_fu'

#git関連のalias
alias gcd='git checkout develop'
alias gpod='git pull origin develop'
