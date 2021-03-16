# Windows binaries of GNU Wget

A command-line utility for retrieving files using HTTP, HTTPS and FTP protocols.

GNU Wget is a free software package for retrieving files using HTTP, HTTPS, FTP
and FTPS the most widely-used Internet protocols. It is a non-interactive commandline tool,
so it may easily be called from scripts, cron jobs and terminals.

## Download

__This build use GnuTLS__

[wget-1.21.1-64bit-GnuTLS.zip](https://github.com/webfolderio/wget-windows/releases/download/1.21.1/wget-1.21.1-64bit-GnuTLS.zip) - 2,46 MB

__This build use OpenSSL__

[wget-1.21.1-64bit-OpenSSL.zip](https://github.com/webfolderio/wget-windows/releases/download/1.21.1/wget-1.21.1-64bit-OpenSSL.zip) - 2,80 MB

__Both of the builds are for only 64 bit OS (Windows 7/Windows 8/Windows 10)__

File checksums for *wget-1.21.1-64bit-GnuTLS.zip*:

SHA1: `5debe6203fe3fca72835b858f56e60b84a71792c`

MD5: `c446e2114567f9e30806213a24700b6e`


File checksums for *wget-1.21.1-64bit-OpenSSL.zip*:

SHA1: `7cacbe3a6cb14a6feeeaf28fa257ee3bf6c63178`

MD5: `7214a5a91aa04ac7cc5886995f240cfb`

## How to use wget

Please read the official GNU Wget manual from the below link.

[https://www.gnu.org/software/wget/manual/wget.html](https://www.gnu.org/software/wget/manual/wget.html)

### Build Environment

wget is built on GitHub Actions and cross compiled with mingw64 (Ubuntu & GNU/gcc 9.3). It's virus-free and safe to use.

All required libraries is **statically linked**, and it's not necessary to use third-party DLL.


### wget features

wget-windows bundled with all wget features except nls (multi-lang version).

GnuTLS version:

`+cares +digest +gpgme +https +ipv6 +iri +large-file +metalink -nls +ntlm +opie +psl +ssl/gnutls`

OpenSSL version:

`+cares +digest +gpgme +https +ipv6 +iri +large-file +metalink -nls +ntlm +opie +psl +ssl/openssl`

### TLS Library

Our wget executable is bundled with GnuTLS.

We do not support OpenSSL, and we have a plan to support it.

### Staticly Linked Libraries (GnuTLS version)

gmp 6.2.1, nettle 3.7.1, libtasn1 4.16, libidn2 2.3.0, libunistring 0.9.10, gnutls 3.6.15, cares 1.17.1, libpsl 0.21.1, libiconv 1.16, pcre2 10.36, libgpg-error 1.41, libassuan 2.5.4, gpgme 1.15.1, expat 2.2.10, libmetalink 0.1.3, zlib 1.2.11

### Staticly Linked Libraries (OpenSSL version)

libidn2 2.3.0, libunistring 0.9.10, openssl 1.1.1j, cares 1.17.1, libpsl 0.21.1, libiconv 1.16, pcre2 10.36, libgpg-error 1.41, libassuan 2.5.4, gpgme 1.15.1, expat 2.2.10, libmetalink 0.1.3, zlib 1.2.11

## Jotti Virus Scan

Jotti antivirus scan report (GnuTLS):

[https://virusscan.jotti.org/en-US/filescanjob/i1cj28dwdl](https://virusscan.jotti.org/en-US/filescanjob/i1cj28dwdl)

Jotti antivirus scan report (OpenSSL):

[https://virusscan.jotti.org/en-US/filescanjob/8szxt4hrh7](https://virusscan.jotti.org/en-US/filescanjob/8szxt4hrh7)
