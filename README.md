# Windows binaries of GNU Wget 1.21.2

[![wget](https://github.com/webfolderio/wget-windows/actions/workflows/wget.yml/badge.svg)](https://github.com/webfolderio/wget-windows/actions/workflows/wget.yml)

A command-line utility for retrieving files using HTTP, HTTPS and FTP protocols.

GNU Wget is a free software package for retrieving files using HTTP, HTTPS, FTP
and FTPS the most widely-used Internet protocols. It is a non-interactive commandline tool,
so it may easily be called from scripts, cron jobs and terminals.

## Download

__This build use GnuTLS 3.7.2__ (X64)

[wget-1.21.2-64bit-GnuTLS.zip](https://github.com/webfolderio/wget-windows/releases/download/1.21.2/wget-1.21.2-64bit-GnuTLS.zip) - 2,68 MB

__This build use OpenSSL 1.1.1m__ (x64)

[wget-1.21.2-64bit-OpenSSL.zip](https://github.com/webfolderio/wget-windows/releases/download/1.21.2/wget-1.21.2-64bit-OpenSSL.zip) - 2,81 MB

__This build use OpenSSL 1.1.1m__ (x32)

[wget-1.21.2-32bit-OpenSSL.zip](https://github.com/webfolderio/wget-windows/releases/download/v1.21.2/wget-1.21.2-32bit-OpenSSL.zip) - 2,60 MB

__Supported OS: Windows 7/Windows 8/Windows 10__

File checksums for *wget-1.21.2-64bit-GnuTLS.zip*:

SHA1: `57154384c4341dfcd75ed7925fa7dfba72384030`

MD5: `9695003d65440ad30badd0f38eec54c9`


File checksums for *wget-1.21.2-64bit-OpenSSL.zip*:

SHA1: `10247c39baeecb10c002d658f9f427451dbd18d9`

MD5: `548bda13ad5882b5fbf6caa05150189a`


File checksums for *wget-1.21.2-32bit-OpenSSL.zip*:

SHA1: `3ae206709617ecf78201ad5dae648310f48336d2`

MD5: `4d3fb6f1ae9785f9f698657ed461ea1e`

## How to use wget

Please read the official GNU Wget manual from the below link.

[https://www.gnu.org/software/wget/manual/wget.html](https://www.gnu.org/software/wget/manual/wget.html)

### Build Environment

wget is built on GitHub Actions and cross compiled with mingw64 (Ubuntu & GNU/gcc 9.3). It's virus-free and safe to use.

All required libraries is **statically linked**, and it's not necessary to use third-party DLL.


### Wget features

Wget windows bundled with all wget features except nls (multi-lang version).

GnuTLS version:

`+cares +digest +gpgme +https +ipv6 +iri +large-file +metalink -nls +ntlm +opie +psl +ssl/gnutls`

OpenSSL version:

`+cares +digest +gpgme +https +ipv6 +iri +large-file +metalink -nls +ntlm +opie +psl +ssl/openssl`

### Staticly Linked Libraries (GnuTLS version)

library       | version |
--------------| --------|
gmp           | 6.2.1   |
nettle        | 3.7.1   |
libtasn1      | 4.16    |
libidn2       | 2.3.0   |
libunistring  | 0.9.10  |
gnutls        | 3.7.2   |
cares         | 1.17.2  |
libpsl        | 0.21.1  |
libiconv      | 1.16    |
pcre2         | 10.39   |
libgpg-error  | 1.43    |
libassuan     | 2.5.5   |
gpgme         | 1.15.1  |
expat         | 2.4.2   |
libmetalink   | 0.1.3   |
zlib          | 1.2.11  |

### Staticly Linked Libraries (OpenSSL version)

library       | version |
--------------| --------|
libidn2       | 2.3.0   |
libunistring  | 0.9.10  |
openssl       | 1.1.1m  |
cares         | 1.17.2  |
libpsl        | 0.21.1  |
libiconv      | 1.16    |
pcre2         | 10.39   |
libgpg-error  | 1.43    |
libassuan     | 2.5.5   |
gpgme         | 1.15.1  |
expat         | 2.4.2   |
libmetalink   | 0.1.3   |
zlib          | 1.2.11  |

### Virus Scan Results

Antivirus scan report (GnuTLS x64):

[Jotti Scan Results](https://virusscan.jotti.org/en-US/filescanjob/l0d6nevv4k,qzafdqeluk)

[VirusTotal Scan Results](https://www.virustotal.com/gui/file/6eadddd5e637ef55181557571db1ca4d6ce18346d88cee0bba28b09ee266dc07)

Antivirus scan report (OpenSSL x64):

[Jotti Scan Results](https://virusscan.jotti.org/en-US/filescanjob/qzafdqeluk)

[VirusTotal Scan Results](https://www.virustotal.com/gui/file/00eb92692fc50fc15636123a288da6581870316d25496f73ac4b3977fd186033)

Antivirus scan report (OpenSSL x32):

[Jotti Scan Results](https://virusscan.jotti.org/en-US/filescanjob/sldl9sna9a)

[VirusTotal Scan Results](https://www.virustotal.com/gui/file/029438aa22459998d7f159fce65406d6eb72bb407f89a01769c32e1f805550c0)


### Notes

Project sponsored by [WebFolder](https://webfolder.io)
