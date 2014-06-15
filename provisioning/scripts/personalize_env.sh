gitdir=/home/vagrant/gits
su vagrant -c "mkdir -p $gitdir"

sudo gem install homesick

cd $gitdir 
su vagrant -c 'git clone https://github.com/nojhan/liquidprompt.git'
su vagrant -c 'homesick clone https://github.com/ronocdh/dotfiles.git'
su vagrant -c 'homesick symlink --force dotfiles'

srilm_path_declaration='export PATH="$SRILM/bin/i686-ubuntu:$PATH"'
new_srilm_path="$(echo "$srilm_path_declaration" | perl -npe 's#(i686)-ubuntu#$1#')"
grep -vq "$new_srilm_path" /home/vagrant/.bashrc && echo "$new_srilm_path" >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc
