echo "Compilation of SWIG-SRILM coming up..."
source /etc/environment
git clone https://github.com/desilinguist/swig-srilm $SWIGSRILM

perl -p -i -e 's#/home/speech/Resources/Tools/(srilm/lib/i686)-m64#/opt/$1#' $SWIGSRILM/Makefile
perl -p -i -e 's#/home/speech/Resources/Tools/(srilm/include)#/opt/$1#' $SWIGSRILM/Makefile
perl -p -i -e 's#/opt/python/2.7/include/python2.7#/usr/include/python2.7#' $SWIGSRILM/Makefile

make -C $SWIGSRILM python

cp $SWIGSRILM/{_srilm.so,srilm.py} /usr/lib/python2.7
