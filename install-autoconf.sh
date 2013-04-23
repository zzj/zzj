cd software
wget http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz
tar zxf autoconf-2.69.tar.gz
cd autoconf-2.69
./configure --prefix=$HOME/bin
make
make install

