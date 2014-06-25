cat <<ENVIRONMENT_VARIABLES >> /etc/environment
SWIGSRILM='/opt/swig-srilm'
SRILM='/opt/srilm'
NLTK_DATA='/home/vagrant/.nltk_data'
ENVIRONMENT_VARIABLES
source /etc/environment

cat <<SRILMPATHSETUP > /etc/profile.d/srilmpath.sh
source /etc/environment
PATH="$SRILM/bin:$PATH"
PATH="$SRILM/bin/$(uname -m):$PATH"
export PATH
SRILMPATHSETUP
