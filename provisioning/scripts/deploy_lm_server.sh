gitdir="/home/vagrant/gits"
serverDir="$gitdir/language-model-server"

su vagrant -c "mkdir -p $gitdir"
su vagrant -c "mkdir -p $serverDir/corpus"
su vagrant -c "mkdir -p $serverDir/fixtures"

rm -rf "$serverDir"
cd "$gitdir"
su vagrant -c "git clone https://github.com/ronocdh/language-model-server.git"

cd "$serverDir"
su vagrant -c "git fetch"
su vagrant -c "git checkout nltk-corpora"

pip install -U -r "$serverDir/requirements.txt"

su vagrant -c "$serverDir/bootstrap.sh"
