echo "starting benchmarks..."

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source $HOME/.gvm/scripts/gvm

gvm install master
gvm use master

go version 


