gitdir=/home/vagrant/gits
su vagrant -c "mkdir -p $gitdir"

sudo gem install homesick

su vagrant
cd $gitdir 
git clone https://github.com/nojhan/liquidprompt.git
homesick clone https://github.com/ronocdh/dotfiles.git
homesick symlink --force dotfiles
srilm_path_declaration='PATH="$SRILM/bin/i686-ubuntu:$PATH"'
new_srilm_path="$(echo "$srilm_path_declaration" | perl -npe 's#(i686)-ubuntu#$1#')"
grep -vq "$new_srilm_path" /home/vagrant/.bashrc && echo "$new_srilm_path" >> /home/vagrant/.bashrc
exit

source /home/vagrant/.bashrc
