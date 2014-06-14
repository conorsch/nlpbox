echo "Now compiling SRILM..."
source /etc/environment
export NO_TCL=X
export TCL_INCLUDE=''
export TCL_LIBRARY=''

mkdir -p $SRILM
tar -xz --directory $SRILM -f /vagrant/provisioning/srilm.tgz

perl -p -i -e 's!^#\s+(SRILM = )/home/speech/stolcke/project/srilm/devel\E!$1/opt/srilm!' $SRILM/Makefile

make -C $SRILM
