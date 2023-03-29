export AFLGO=$HOME/aflgo
export AFLCOV=/root/afl-cov

git clone https://git.code.sf.net/p/giflib/code giflib-cov
cd giflib-cov; git checkout 72e31ff

export CC=gcc
export CFLAGS="--coverage -O0"

./autogen.sh; make distclean
mkdir build; cd build
../configure --disable-shared --prefix=`pwd`
make clean; make -j4