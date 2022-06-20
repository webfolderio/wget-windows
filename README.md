# Windows binaries of GNU Wget 1.21.3

[![wget](https://github.com/webfolderio/wget-windows/actions/workflows/wget.yml/badge.svg)](https://github.com/webfolderio/wget-windows/actions/workflows/wget.yml)

A command-line utility for retrieving files using HTTP, HTTPS and FTP protocols.

GNU Wget is a free software package for retrieving files using HTTP, HTTPS, FTP
and FTPS the most widely-used Internet protocols. It is a non-interactive commandline tool,
so it may easily be called from scripts, cron jobs and terminals.

## Download

| Arch | GnuTLS 3.7.2                                                                                                                                 | OpenSSL 1.1.1m                                                                                                                                 |
|------| ---------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| x64  | [wget-1.21.3-64bit-GnuTLS.zip](https://github.com/webfolderio/wget-windows/releases/download/v1.21.3/wget-1.21.3-64bit-GnuTLS.zip) - 2,68 MB | [wget-1.21.3-64bit-OpenSSL.zip](https://github.com/webfolderio/wget-windows/releases/download/v1.21.3/wget-1.21.3-64bit-OpenSSL.zip) - 2,81 MB |      
| x86  | n/a                                                                                                                                          | [wget-1.21.3-32bit-OpenSSL.zip](https://github.com/webfolderio/wget-windows/releases/download/v1.21.3/wget-1.21.3-32bit-OpenSSL.zip) - 2,60 MB |      


__Supported OS: Windows 7/Windows 8/Windows 10__

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

### Staticly Linked Libraries

| library       | GnuTLS based version | OpenSSL based version |
|---------------| ---------------------|-----------------------|
| gnutls        | 3.7.2                | n/a                   |
| openssl       | n/a                  | 1.1.1m                |
| gmp           | 6.2.1                | n/a                   |
| nettle        | 3.7.1                | n/a                   |
| libtasn1      | 4.16                 | n/a                   |
| libidn2       | 2.3.0                | 2.3.0                 |
| libunistring  | 0.9.10               | 0.9.10                |
| cares         | 1.17.2               | 1.17.2                |
| libpsl        | 0.21.1               | 0.21.1                |
| libiconv      | 1.16                 | 1.16                  |
| pcre2         | 10.39                | 10.39                 |
| libgpg-error  | 1.43                 | 1.43                  |
| libassuan     | 2.5.5                | 2.5.5                 |
| gpgme         | 1.16.0               | 1.16.0                |
| expat         | 2.4.2                | 2.4.2                 |
| libmetalink   | 0.1.3                | 0.1.3                 |
| zlib          | 1.2.11               | 1.2.11                |

### Notes

Project sponsored by [WebFolder](https://webfolder.io)
