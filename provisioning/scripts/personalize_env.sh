gitdir=/home/vagrant/gits
mkdir $gitdir

aptitude install homesick
gem install homesick

cd $gitdir && su vagrant -c 'git clone https://github.com/nojhan/liquidprompt.git'
su vagrant -c 'homesick clone https://github.com/ronocdh/dotfiles.git'
su vagrant -c 'homesick symlink --force dotfiles'

srilm_path_declaration='PATH="$SRILM/bin/i686-ubuntu:$PATH"'
new_srilm_path=$(echo "$srilm_path_declaration" | perl -npe 's#(i686)-ubuntu#$1#')
if [[ ! grep "$new_srilm_path" /home/vagrant/.bashrc ]]; then
    echo $($new_srilm_path >> /home/vagrant/.bashrc;
fi
