cd software
wget http://www.python.org/ftp/python/2.7.4/Python-2.7.4.tgz
tar zxf Python-2.7.4.tgz
rm Python-2.7.4.tgz
cd Python-2.7.4
./configure --prefix=$HOME/bin 
make -j8
make install
curl -O http://python-distribute.org/distribute_setup.py
python distribute_setup.py
curl -O https://raw.github.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
