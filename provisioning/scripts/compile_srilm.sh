echo "Now compiling SRILM..."
export NO_TCL=X
export TCL_INCLUDE=''
export TCL_LIBRARY=''

mkdir -p $SRILM
tar -xz --directory $SRILM -f /vagrant/provisioning/srilm.tgz

make -C $SRILM
