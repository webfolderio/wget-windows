# Windows binaries of GNU Wget

A command-line utility for retrieving files using HTTP, HTTPS and FTP protocols.

GNU Wget is a free software package for retrieving files using HTTP, HTTPS, FTP
and FTPS the most widely-used Internet protocols. It is a non-interactive commandline tool,
so it may easily be called from scripts, cron jobs and terminals.

## Download

[wget.exe](https://github.com/webfolderio/wget-windows/releases/download/1.21.1/wget.exe) - 5,27 MB

File checksums

SHA1: e9d54048155d1b3b443b00b70f7f8bb621ff2df6
MD4: b4d83a260d62f9499c5d8421daa0f3fd
MD5: ef38d9636d0ea687faf7c25a7b0852d5
SHA256: 540700a23460f7681f9264342c902363a1fbb7daf91930bb8f6944e681b6afd2

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

[https://virusscan.jotti.org/en-US/filescanjob/ew5rc17uv6](https://virusscan.jotti.org/en-US/filescanjob/ew5rc17uv6)
