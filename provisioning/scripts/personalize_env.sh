gitdir=/home/vagrant/gits
mkdir $gitdir

aptitude install homesick
gem install homesick

cd $gitdir && git clone https://github.com/nojhan/liquidprompt.git
homesick clone https://github.com/ronocdh/dotfiles.git
homesick symlink --force dotfiles
