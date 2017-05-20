echo "starting benchmarks..."

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source $HOME/.gvm/scripts/gvm

#Bootstrap go for compilation
gvm install go1.8.1 -B
gvm use go1.8.1

gvm install master
gvm use master

go version 

cat /root/.gvm/logs/go-master-compile.log

