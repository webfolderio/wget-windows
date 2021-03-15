# Windows binaries of GNU Wget

A command-line utility for retrieving files using HTTP, HTTPS and FTP protocols.

GNU Wget is a free software package for retrieving files using HTTP, HTTPS, FTP
and FTPS the most widely-used Internet protocols. It is a non-interactive commandline tool,
so it may easily be called from scripts, cron jobs and terminals.

## Download

[wget.exe](https://github.com/webfolderio/wget-windows/releases/download/1.21.1/wget-1.21.1.zip) - 2,46 MB

File checksums for `wget-21.1.zip`:

SHA1: `718a7bb736802197695c16a7f720b01acc9c6b09`

MD5: `fa4c50f9bad5309efd9c1d8fa1b3d62f`

## How to use wget

Please read the official GNU Wget manual from the below link.

[https://www.gnu.org/software/wget/manual/wget.html](https://www.gnu.org/software/wget/manual/wget.html)

### Build Environment

wget is built on GitHub Actions and cross compiled with mingw64 (Ubuntu & GNU/gcc 9.3). It's virus-free and safe to use.

All required libraries is **statically linked**, and it's not necessary to use third-party DLL.


### wget fatures

wget-windows bundled with all wget features except nls (multi-lang version).
Feature list:

`+cares +digest +gpgme +https +ipv6 +iri +large-file +metalink -nls +ntlm +opie +psl +ssl/gnutls`

### TLS Library

Our wget executable is bundled with GnuTLS.

We do not support OpenSSL, and we don't have a plan to support it.

### Staticly Linked Libraries

* gmp 6.2.1
* nettle 3.7.1
* libtasn1 4.16
* libidn2 2.3.0
* libunistring 0.9.10
* gnutls 3.6.15
* cares 1.17.1
* libpsl 0.21.1
* libiconv 1.16
* pcre2 10.36
* libgpg-error 1.41
* libassuan 2.5.4
* gpgme 1.15.1
* expat 2.2.10
* libmetalink 0.1.3
* zlib 1.2.11

## Jotti Virus Scan

Jotti antivirus scan report:

[https://virusscan.jotti.org/en-US/filescanjob/uvg8o7f76y](https://virusscan.jotti.org/en-US/filescanjob/uvg8o7f76y)
