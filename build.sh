mkdir build-wget-webfolder.io
cd build-wget-webfolder.io
mkdir install
export INSTALL_PATH=$PWD/install
# -----------------------------------------------------------------------------
# build gmp
# -----------------------------------------------------------------------------
wget https://gmplib.org/download/gmp/gmp-6.2.1.tar.xz
tar -xf gmp-6.2.1.tar.xz 
cd gmp-6.2.1
./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --prefix=$INSTALL_PATH
test $? -eq 0 || echo "can not configure gmp" && exit $?
make
test $? -eq 0 || echo "can not build gmp" && exit $?
make install
test $? -eq 0 || echo "can not install gmp" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build nettle
# -----------------------------------------------------------------------------
wget https://ftp.gnu.org/gnu/nettle/nettle-3.7.1.tar.gz
tar -xf nettle-3.7.1.tar.gz
cd nettle-3.7.1
CFLAGS="-I$INSTALL_PATH/include" \
 LDFLAGS="-L$INSTALL_PATH/lib" \
 ./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --disable-documentation \
 --prefix=$INSTALL_PATH
test $? -eq 0 || echo "can not configure nettle" && exit $?
make
test $? -eq 0 || echo "can not build nettle" && exit $?
make install
test $? -eq 0 || echo "can not install nettle" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build tasn
# -----------------------------------------------------------------------------
wget https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.16.0.tar.gz
tar -xf libtasn1-4.16.0.tar.gz
cd libtasn1-4.16.0
./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --disable-doc \
 --prefix=$INSTALL_PATH
test $? -eq 0 || echo "can not configure libtasn1" && exit $?
make
test $? -eq 0 || echo "can not build libtasn1" && exit $?
make install
test $? -eq 0 || echo "can not install libtasn1" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build idn
# -----------------------------------------------------------------------------
wget https://ftp.gnu.org/gnu/libidn/libidn2-2.3.0.tar.gz
tar -xf libidn2-2.3.0.tar.gz
cd libidn2-2.3.0
./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --disable-doc \
 --prefix=$INSTALL_PATH
test $? -eq 0 || echo "can not configure libidn2" && exit $?
make
test $? -eq 0 || echo "can not build libidn2" && exit $?
make install
test $? -eq 0 || echo "can not install libidn2" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build unistring
# -----------------------------------------------------------------------------
wget https://ftp.gnu.org/gnu/libunistring/libunistring-0.9.10.tar.gz
tar -xf libunistring-0.9.10.tar.gz
cd libunistring-0.9.10
./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --prefix=$INSTALL_PATH
test $? -eq 0 || echo "can not configure libunistring" && exit $?
make
test $? -eq 0 || echo "can not build libunistring" && exit $?
make install
test $? -eq 0 || echo "can not install libunistring" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build gnutls
# -----------------------------------------------------------------------------
wget https://www.gnupg.org/ftp/gcrypt/gnutls/v3.6/gnutls-3.6.15.tar.xz
tar -xf gnutls-3.6.15.tar.xz
cd gnutls-3.6.15
PKG_CONFIG_PATH="$INSTALL_PATH/lib/pkgconfig" \
 CFLAGS="-I$INSTALL_PATH/include" \
 LDFLAGS="-L$INSTALL_PATH/lib" \
 GMP_LIBS="-L$INSTALL_PATH/lib -lgmp" \
 NETTLE_LIBS="-L$INSTALL_PATH/lib -lnettle -lgmp" \
 HOGWEED_LIBS="-L$INSTALL_PATH/lib -lhogweed -lnettle -lgmp" \
 LIBTASN1_LIBS="-L$INSTALL_PATH/lib -ltasn1" \
 LIBIDN2_LIBS="-L$INSTALL_PATH/lib -lidn2" \
 GMP_CFLAGS=$CFLAGS \
 LIBTASN1_CFLAGS=$CFLAGS \
 NETTLE_CFLAGS=$CFLAGS \
 HOGWEED_CFLAGS=$CFLAGS \
 LIBIDN2_CFLAGS=$CFLAGS \
 ./configure \
 --host=x86_64-w64-mingw32 \
 --prefix=$INSTALL_PATH \
 --with-included-unistring \
 --disable-openssl-compatibility \
 --without-p11-kit \
 --disable-tests \
 --disable-doc \
 --disable-shared \
 --enable-static
test $? -eq 0 || echo "can not configure gnutls" && exit $?
make
test $? -eq 0 || echo "can not build gnutls" && exit $?
make install
test $? -eq 0 || echo "can not install gnutls" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build cares
# -----------------------------------------------------------------------------
wget https://github.com/c-ares/c-ares/releases/download/cares-1_17_1/c-ares-1.17.1.tar.gz
tar -xf c-ares-1.17.1.tar.gz
cd c-ares-1.17.1
CPPFLAGS="-DCARES_STATICLIB=1" \
 ./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --disable-tests \
 --disable-debug
test $? -eq 0 || echo "can not configure cares" && exit $?
make
test $? -eq 0 || echo "can not build cares" && exit $?
make install
test $? -eq 0 || echo "can not install cares" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build psl
# -----------------------------------------------------------------------------
wget https://github.com/rockdaboot/libpsl/releases/download/0.21.1/libpsl-0.21.1.tar.gz
tar -xf libpsl-0.21.1.tar.gz
cd libpsl-0.21.1
./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --disable-gtk-doc
test $? -eq 0 || echo "can not configure libpsl" && exit $?
make
test $? -eq 0 || echo "can not build libpsl" && exit $?
make install
test $? -eq 0 || echo "can not install libpsl" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build psl
# -----------------------------------------------------------------------------
wget https://ftp.gnu.org/gnu/libiconv/libiconv-1.16.tar.gz
tar -xf libiconv-1.16.tar.gz
cd libiconv-1.16
./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static
test $? -eq 0 || echo "can not configure libiconv" && exit $?
make
test $? -eq 0 || echo "can not build libiconv" && exit $?
make install
test $? -eq 0 || echo "can not install libiconv" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build pcre2
# -----------------------------------------------------------------------------
wget https://ftp.pcre.org/pub/pcre/pcre2-10.36.tar.gz
tar -xf pcre2-10.36.tar.gz
cd pcre2-10.36
./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static
test $? -eq 0 || echo "can not configure pcre2" && exit $?
make
test $? -eq 0 || echo "can not build pcre2" && exit $?
make install
test $? -eq 0 || echo "can not install pcre2" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build gpg-error
# -----------------------------------------------------------------------------
wget https://www.gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.41.tar.gz
tar -xf libgpg-error-1.41.tar.gz
cd libgpg-error-1.41
./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static
 --disable-doc
test $? -eq 0 || echo "can not configure libgpg-error" && exit $?
make
test $? -eq 0 || echo "can not build libgpg-error" && exit $?
make install
test $? -eq 0 || echo "can not install libgpg-error" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build assuan
# -----------------------------------------------------------------------------
wget https://gnupg.org/ftp/gcrypt/libassuan/libassuan-2.5.4.tar.bz2
tar -xf libassuan-2.5.4.tar.bz2
cd libassuan-2.5.4
./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --disable-doc \
 --with-libgpg-error-prefix=$INSTALL_PATH
test $? -eq 0 || echo "can not configure libassuan" && exit $?
make
test $? -eq 0 || echo "can not build libassuan" && exit $?
make install
test $? -eq 0 || echo "can not install libassuan" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build gpgme
# -----------------------------------------------------------------------------
wget https://gnupg.org/ftp/gcrypt/gpgme/gpgme-1.15.1.tar.bz2
tar -xf gpgme-1.15.1.tar.bz2 
cd gpgme-1.15.1
./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --with-libgpg-error-prefix=$INSTALL_PATH \
 --disable-gpg-test \
 --disable-g13-test \
 --disable-gpgsm-test \
 --disable-gpgconf-test \
 --disable-glibtest \
 --with-libassuan-prefix=$INSTALL_PATH
test $? -eq 0 || echo "can not configure gpgme" && exit $?
make
test $? -eq 0 || echo "can not build gpgme" && exit $?
make install
test $? -eq 0 || echo "can not install gpgme" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build expat
# -----------------------------------------------------------------------------
wget https://github.com/libexpat/libexpat/releases/download/R_2_2_10/expat-2.2.10.tar.gz
tar -xf expat-2.2.10.tar.gz
cd expat-2.2.10
./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --without-docbook \
 --without-tests \
 --with-libgpg-error-prefix=$INSTALL_PATH
test $? -eq 0 || echo "can not configure expat" && exit $?
make
test $? -eq 0 || echo "can not build expat" && exit $?
make install
test $? -eq 0 || echo "can not install expat" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build metalink
# -----------------------------------------------------------------------------
wget https://github.com/metalink-dev/libmetalink/releases/download/release-0.1.3/libmetalink-0.1.3.tar.gz
tar -xf libmetalink-0.1.3.tar.gz
cd libmetalink-0.1.3
EXPAT_CFLAGS="-I$INSTALL_PATH/include" \
 EXPAT_LIBS="-L$INSTALL_PATH/lib -lexpat" \
 ./configure \
 --host=x86_64-w64-mingw32 \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --with-libgpg-error-prefix=$INSTALL_PATH \
 --with-libexpat
test $? -eq 0 || echo "can not configure metalink" && exit $?
make
test $? -eq 0 || echo "can not build metalink" && exit $?
make install
test $? -eq 0 || echo "can not install metalink" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build wget
# -----------------------------------------------------------------------------
wget https://zlib.net/zlib-1.2.11.tar.gz
tar -xf zlib-1.2.11.tar.gz
cd zlib-1.2.11
CC=x86_64-w64-mingw32-gcc ./configure --64 --static --prefix=$INSTALL_PATH
test $? -eq 0 || echo "can not configure zlib" && exit $?
make
test $? -eq 0 || echo "can not build zlib" && exit $?
make install
test $? -eq 0 || echo "can not install zlib" && exit $?
cd ..
# -----------------------------------------------------------------------------
# build wget
# -----------------------------------------------------------------------------
wget https://ftp.gnu.org/gnu/wget/wget-1.21.1.tar.gz
tar -xf wget-1.21.1.tar.gz
cd wget-1.21.1
echo $PWD
CFLAGS="-I$INSTALL_PATH/include -DGNUTLS_INTERNAL_BUILD=1 -DCARES_STATICLIB=1 -DPCRE2_STATIC=1 -DNDEBUG -O2 -march=x86-64 -mtune=generic" \
 LDFLAGS="-L$INSTALL_PATH/lib -static -static-libgcc" \
 GNUTLS_CFLAGS=$CFLAGS \
 GNUTLS_LIBS="-L$INSTALL_PATH/lib -lgnutls" \
 LIBPSL_CFLAGS=$CFLAGS \
 LIBPSL_LIBS="-L$INSTALL_PATH/lib -lpsl" \
 CARES_CFLAGS=$CFLAGS \
 CARES_LIBS="-L$INSTALL_PATH/lib -lcares" \
 PCRE2_CFLAGS=$CFLAGS \
 PCRE2_LIBS="-L$INSTALL_PATH/lib -lpcre2-8"  \
 METALINK_CFLAGS="-I$INSTALL_PATH/include" \
 METALINK_LIBS="-L$INSTALL_PATH/lib -lmetalink -lexpat" \
 LIBS="-L$INSTALL_PATH/lib -lhogweed -lnettle -lgmp -ltasn1 -lidn2 -lpsl -lcares -lunistring -liconv -lpcre2-8 -lmetalink -lexpat -lgpgme -lassuan -lgpg-error -lz -lcrypt32" \
 ./configure \
 --host=x86_64-w64-mingw32 \
 --prefix=$INSTALL_PATH \
 --disable-debug \
 --disable-valgrind-tests \
 --enable-iri \
 --enable-pcre2 \
 --with-ssl=gnutls \
 --with-included-libunistring \
 --with-libidn \
 --with-cares \
 --with-libpsl \
 --with-metalink \
 --with-gpgme-prefix=$INSTALL_PATH
test $? -eq 0 || echo "can not configure wget" && exit $?
make
test $? -eq 0 || echo "can not build wget" && exit $?
make install
test $? -eq 0 || echo "can not install wget" && exit $?
x86_64-w64-mingw32-strip ../install/bin/wget.exe
