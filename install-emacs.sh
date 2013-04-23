cd software
wget ftp://ftp.gnu.org/gnu/emacs/emacs-24.3.tar.gz
tar xzf emacs-24.3.tar.gz
cd emacs-24.3
./configure --prefix=$HOME/bin --with-x --with-gif=no
make
make -j128
make install
