cd software
wget ftp://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p0.tar.gz
tar zxf ruby-2.0.0-p0.tar.gz
cd ruby-2.0.0-p0
./configure --prefix=$HOME/bin/
make -j129
make install
