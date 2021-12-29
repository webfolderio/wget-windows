#
# wget build script for Windows environment
# Author: WebFolder
# https://webfolder.io
# March 15, 2021
#
mkdir build-wget-webfolder-x86.io
cd build-wget-webfolder-x86.io
mkdir install
export INSTALL_PATH=$PWD/install
export WGET_MINGW_HOST=i686-w64-mingw32
export WGET_ARCH=i686
export MINGW_STRIP_TOOL=/usr/bin/i686-w64-mingw32-strip
# -----------------------------------------------------------------------------
# build gmp
# -----------------------------------------------------------------------------
wget https://gmplib.org/download/gmp/gmp-6.2.1.tar.xz
tar -xf gmp-6.2.1.tar.xz
cd gmp-6.2.1
./configure \
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --prefix=$INSTALL_PATH
(($? != 0)) && { printf '%s\n' "[gmp] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[gmp] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[gmp] make install"; exit 1; }
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
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --disable-documentation \
 --prefix=$INSTALL_PATH
(($? != 0)) && { printf '%s\n' "[nettle] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[nettle] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[nettle] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build tasn
# -----------------------------------------------------------------------------
wget https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.18.0.tar.gz
tar -xf libtasn1-4.18.0.tar.gz
cd libtasn1-4.18.0
./configure \
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --disable-doc \
 --prefix=$INSTALL_PATH
(($? != 0)) && { printf '%s\n' "[tasn] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[tasn] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[tasn] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build idn2
# -----------------------------------------------------------------------------
wget https://ftp.gnu.org/gnu/libidn/libidn2-2.3.0.tar.gz
tar -xf libidn2-2.3.0.tar.gz
cd libidn2-2.3.0
./configure \
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --disable-doc \
 --prefix=$INSTALL_PATH
(($? != 0)) && { printf '%s\n' "[idn2] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[idn2] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[idn2] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build unistring
# -----------------------------------------------------------------------------
wget https://ftp.gnu.org/gnu/libunistring/libunistring-0.9.10.tar.gz
tar -xf libunistring-0.9.10.tar.gz
cd libunistring-0.9.10
./configure \
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --prefix=$INSTALL_PATH
(($? != 0)) && { printf '%s\n' "[unistring] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[unistring] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[unistring] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build gnutls
# -----------------------------------------------------------------------------
wget https://www.gnupg.org/ftp/gcrypt/gnutls/v3.7/gnutls-3.7.2.tar.xz
tar -xf gnutls-3.7.2.tar.xz
cd gnutls-3.7.2
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
 --host=$WGET_MINGW_HOST \
 --prefix=$INSTALL_PATH \
 --with-included-unistring \
 --disable-openssl-compatibility \
 --without-p11-kit \
 --disable-tests \
 --disable-doc \
 --disable-shared \
 --enable-static
(($? != 0)) && { printf '%s\n' "[gnutls] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[gnutls] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[gnutls] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build cares
# -----------------------------------------------------------------------------
wget https://github.com/c-ares/c-ares/releases/download/cares-1_17_2/c-ares-1.17.2.tar.gz
tar -xf c-ares-1.17.2.tar.gz
cd c-ares-1.17.2
CPPFLAGS="-DCARES_STATICLIB=1" \
 ./configure \
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --disable-tests \
 --disable-debug
(($? != 0)) && { printf '%s\n' "[cares] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[cares] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[cares] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build iconv
# -----------------------------------------------------------------------------
wget https://ftp.gnu.org/gnu/libiconv/libiconv-1.16.tar.gz
tar -xf libiconv-1.16.tar.gz
cd libiconv-1.16
./configure \
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static
(($? != 0)) && { printf '%s\n' "[iconv] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[iconv] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[iconv] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build psl
# -----------------------------------------------------------------------------
wget https://github.com/rockdaboot/libpsl/releases/download/0.21.1/libpsl-0.21.1.tar.gz
tar -xf libpsl-0.21.1.tar.gz
cd libpsl-0.21.1
CFLAGS="-I$INSTALL_PATH/include" \
 LIBS="-L$INSTALL_PATH/lib -lunistring -lidn2" \
 LIBIDN2_CFLAGS="-I$INSTALL_PATH/include" \
 LIBIDN2_LIBS="-L$INSTALL_PATH/lib -lunistring -lidn2" \
 ./configure \
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --disable-gtk-doc \
 --enable-builtin=libidn2 \
 --enable-runtime=libidn2 \
 --with-libiconv-prefix=$INSTALL_PATH
(($? != 0)) && { printf '%s\n' "[psl] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[psl] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[psl] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build pcre2
# -----------------------------------------------------------------------------
wget https://github.com/PhilipHazel/pcre2/releases/download/pcre2-10.39/pcre2-10.39.tar.gz
tar -xf pcre2-10.39.tar.gz
cd pcre2-10.39
./configure \
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static
(($? != 0)) && { printf '%s\n' "[pcre2] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[pcre2] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[pcre2] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build gpg-error
# -----------------------------------------------------------------------------
wget https://www.gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.43.tar.gz
tar -xf libgpg-error-1.43.tar.gz
cd libgpg-error-1.43
./configure \
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --disable-doc
(($? != 0)) && { printf '%s\n' "[gpg-error] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[gpg-error] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[gpg-error] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build assuan
# -----------------------------------------------------------------------------
wget https://gnupg.org/ftp/gcrypt/libassuan/libassuan-2.5.5.tar.bz2
tar -xf libassuan-2.5.5.tar.bz2
cd libassuan-2.5.5
./configure \
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --disable-doc \
 --with-libgpg-error-prefix=$INSTALL_PATH
(($? != 0)) && { printf '%s\n' "[assuan] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[assuan] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[assuan] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build gpgme
# -----------------------------------------------------------------------------
wget https://gnupg.org/ftp/gcrypt/gpgme/gpgme-1.16.0.tar.bz2
tar -xf gpgme-1.16.0.tar.bz2
cd gpgme-1.16.0
./configure \
 --host=$WGET_MINGW_HOST \
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
(($? != 0)) && { printf '%s\n' "[gpgme] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[gpgme] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[gpgme] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build expat
# -----------------------------------------------------------------------------
wget https://github.com/libexpat/libexpat/releases/download/R_2_4_2/expat-2.4.2.tar.gz
tar -xf expat-2.4.2.tar.gz
cd expat-2.4.2
./configure \
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --without-docbook \
 --without-tests \
 --with-libgpg-error-prefix=$INSTALL_PATH
(($? != 0)) && { printf '%s\n' "[expat] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[expat] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[expat] make install"; exit 1; }
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
 --host=$WGET_MINGW_HOST \
 --disable-shared \
 --prefix=$INSTALL_PATH \
 --enable-static \
 --with-libgpg-error-prefix=$INSTALL_PATH \
 --with-libexpat
(($? != 0)) && { printf '%s\n' "[metalink] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[metalink] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[metalink] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build zlib
# -----------------------------------------------------------------------------
wget https://zlib.net/zlib-1.2.11.tar.gz
tar -xf zlib-1.2.11.tar.gz
cd zlib-1.2.11
CC=x86_64-w64-mingw32-gcc ./configure --64 --static --prefix=$INSTALL_PATH
(($? != 0)) && { printf '%s\n' "[zlib] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[zlib] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[zlib] make install"; exit 1; }
cd ..
# -----------------------------------------------------------------------------
# build openssl
# -----------------------------------------------------------------------------
wget https://www.openssl.org/source/openssl-1.1.1m.tar.gz
tar -xf openssl-1.1.1m.tar.gz
cd openssl-1.1.1m
./Configure \
 --static \
 -static \
 --prefix=$INSTALL_PATH \
 --cross-compile-prefix=x86_64-w64-mingw32- \
 mingw64 \
 no-shared \
 enable-asm \
 no-tests \
 --with-zlib-include=$INSTALL_PATH \
 --with-zlib-lib=$INSTALL_PATH/lib/libz.a
make
make install_sw
cd ..
# -----------------------------------------------------------------------------
# build wget (gnuTLS)
# -----------------------------------------------------------------------------
wget https://ftp.gnu.org/gnu/wget/wget-1.21.2.tar.gz
tar -xf wget-1.21.2.tar.gz
cd wget-1.21.2
CFLAGS="-I$INSTALL_PATH/include -D_WIN32_WINNT=0x601 -DGNUTLS_INTERNAL_BUILD=1 -DCARES_STATICLIB=1 -DPCRE2_STATIC=1 -DNDEBUG -O2 -march=$WGET_ARCH -mtune=generic" \
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
 LIBS="-L$INSTALL_PATH/lib -lbcrypt -lhogweed -lnettle -lgmp -ltasn1 -lidn2 -lpsl -lcares -lunistring -liconv -lpcre2-8 -lmetalink -lexpat -lgpgme -lassuan -lgpg-error -lz -lcrypt32" \
 ./configure \
 --host=$WGET_MINGW_HOST \
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
(($? != 0)) && { printf '%s\n' "[wget gnutls] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[wget gnutls] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[wget gnutls] make install"; exit 1; }
mkdir $INSTALL_PATH/wget-gnutls
cp $INSTALL_PATH/bin/wget.exe $INSTALL_PATH/wget-gnutls
$MINGW_STRIP_TOOL $INSTALL_PATH/wget-gnutls/wget.exe
# -----------------------------------------------------------------------------
# build wget (openssl)
# -----------------------------------------------------------------------------
make clean
cp ../../windows-openssl.diff .
patch src/openssl.c < windows-openssl.diff
CFLAGS="-I$INSTALL_PATH/include -D_WIN32_WINNT=0x601 -DCARES_STATICLIB=1 -DPCRE2_STATIC=1 -DNDEBUG -O2 -march=$WGET_ARCH -mtune=generic" \
 LDFLAGS="-L$INSTALL_PATH/lib -static -static-libgcc" \
 OPENSSL_CFLAGS=$CFLAGS \
 OPENSSL_LIBS="-L$INSTALL_PATH/lib -lcrypto -lssl" \
 LIBPSL_CFLAGS=$CFLAGS \
 LIBPSL_LIBS="-L$INSTALL_PATH/lib -lpsl" \
 CARES_CFLAGS=$CFLAGS \
 CARES_LIBS="-L$INSTALL_PATH/lib -lcares" \
 PCRE2_CFLAGS=$CFLAGS \
 PCRE2_LIBS="-L$INSTALL_PATH/lib -lpcre2-8"  \
 METALINK_CFLAGS="-I$INSTALL_PATH/include" \
 METALINK_LIBS="-L$INSTALL_PATH/lib -lmetalink -lexpat" \
 LIBS="-L$INSTALL_PATH/lib -lidn2 -lpsl -lcares -lunistring -liconv -lpcre2-8 -lmetalink -lexpat -lgpgme -lassuan -lgpg-error -lcrypto -lssl -lz -lcrypt32" \
 ./configure \
 --host=$WGET_MINGW_HOST \
 --prefix=$INSTALL_PATH \
 --disable-debug \
 --disable-valgrind-tests \
 --enable-iri \
 --enable-pcre2 \
 --with-ssl=openssl \
 --with-included-libunistring \
 --with-libidn \
 --with-cares \
 --with-libpsl \
 --with-metalink \
 --with-openssl \
 --with-gpgme-prefix=$INSTALL_PATH
(($? != 0)) && { printf '%s\n' "[wget openssl] configure failed"; exit 1; }
make
(($? != 0)) && { printf '%s\n' "[wget openssl] make failed"; exit 1; }
make install
(($? != 0)) && { printf '%s\n' "[wget openssl] make install"; exit 1; }
mkdir $INSTALL_PATH/wget-openssl
cp $INSTALL_PATH/bin/wget.exe $INSTALL_PATH/wget-openssl
$MINGW_STRIP_TOOL $INSTALL_PATH/wget-openssl/wget.exe
