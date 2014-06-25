serverDir="/home/vagrant/gits/lmserver"

su vagrant -c "mkdir -p $serverDir/corpus"
su vagrant -c "mkdir -p $serverDir/fixtures"

cd "$serverDir"
pip install -U -r "$serverDir/requirements.txt"
su vagrant -l -c "$serverDir/bootstrap.sh"
