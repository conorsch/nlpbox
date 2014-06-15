gitdir=/home/vagrant/gits

su vagrant
mkdir -p $gitdir

cd $gitdir 
git clone https://github.com/ronocdh/language-model-server.git
serverDir=$gitdir/language-model-server

pip install --user -U -r $serverDir/requirements.txt

$serverDir/bootstrap.sh
exit
