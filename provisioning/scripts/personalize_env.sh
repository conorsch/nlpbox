gitdir=/home/vagrant/gits
mkdir $gitdir

aptitude install homesick
gem install homesick

cd $gitdir && su vagrant -c 'git clone https://github.com/nojhan/liquidprompt.git'
su vagrant -c 'homesick clone https://github.com/ronocdh/dotfiles.git'
su vagrant -c 'homesick symlink --force dotfiles'
