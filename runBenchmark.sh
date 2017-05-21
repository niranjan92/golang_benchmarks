echo "starting benchmarks..."

#to get perf tool
kernel=$(uname -r)
apt-get update
apt-get install linux-tools-common linux-tools-generic linux-tools-$kernel

# bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
# source $HOME/.gvm/scripts/gvm

#Bootstrap go for compilation
gvm install go1.8.1 -B
gvm use go1.8.1

gvm install master
cat /root/.gvm/logs/go-master-compile.log
gvm use master
go version 

echo "building benchmarks in $PWD/go_bench_bin. where $PWD="
echo $PWD
mkdir $PWD/go_bench_bin
GOBIN=$PWD/go_bench_bin go get golang.org/x/benchmarks/...

echo "running benchmarks"
$PWD/go_bench_bin/build -benchnum 5
