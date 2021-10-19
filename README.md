# Windows binaries of GNU Wget 1.21.2

[![wget](https://github.com/webfolderio/wget-windows/actions/workflows/wget.yml/badge.svg)](https://github.com/webfolderio/wget-windows/actions/workflows/wget.yml)

A command-line utility for retrieving files using HTTP, HTTPS and FTP protocols.

GNU Wget is a free software package for retrieving files using HTTP, HTTPS, FTP
and FTPS the most widely-used Internet protocols. It is a non-interactive commandline tool,
so it may easily be called from scripts, cron jobs and terminals.

## Download

__This build use GnuTLS 3.6.15__

7[wget-1.21.2-64bit-GnuTLS.zip](https://github.com/webfolderio/wget-windows/releases/download/1.21.2/wget-1.21.2-64bit-GnuTLS.zip) - 2,47 MB

__This build use OpenSSL 1.1.1j__

[wget-1.21.2-64bit-OpenSSL.zip](https://github.com/webfolderio/wget-windows/releases/download/1.21.2/wget-1.21.2-64bit-OpenSSL.zip) - 2,90 MB

__Both of the builds are for only 64 bit OS (Windows 7/Windows 8/Windows 10)__

File checksums for *wget-1.21.1-64bit-GnuTLS.zip*:

SHA1: `61d31ee82bec32dc0919c2c25b1e5efb4b7e095a`

MD5: `8d475d03913a6548e7f59acbbb22552e`


File checksums for *wget-1.21.1-64bit-OpenSSL.zip*:

SHA1: `29487581ac03dd2272ee996e6fd2851fa529795b`

MD5: `0c6bd2e48ce07418bd486b403713f3bb`

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

gmp 6.2.1, nettle 3.7.1, libtasn1 4.16, libidn2 2.3.0, libunistring 0.9.10, gnutls 3.6.15, cares 1.17.1, libpsl 0.21.1, libiconv 1.16, pcre2 10.36, libgpg-error 1.41, libassuan 2.5.4, gpgme 1.15.1, expat 2.2.10, libmetalink 0.1.3, zlib 1.2.11

### Staticly Linked Libraries (OpenSSL version)

libidn2 2.3.0, libunistring 0.9.10, openssl 1.1.1j, cares 1.17.1, libpsl 0.21.1, libiconv 1.16, pcre2 10.36, libgpg-error 1.41, libassuan 2.5.4, gpgme 1.15.1, expat 2.2.10, libmetalink 0.1.3, zlib 1.2.11

### Virus Scan Results

Antivirus scan report (GnuTLS):

[Jotti Scan Results](https://virusscan.jotti.org/en-US/filescanjob/xw6rznz7js)

[VirusTotal Scan Results](https://www.virustotal.com/gui/url/f1dfd1ccec602dbddba570a5e0ff27bc86fbc2b2e261b5f32013549f10f38840/detection)

Antivirus scan report (OpenSSL):

[Jotti Scan Results](https://virusscan.jotti.org/en-US/filescanjob/uiw0zh2xka)

[VirusTotal Scan Results](https://www.virustotal.com/gui/file/399069ab649ab2ee4f15f8eb50f561c7179d1c5e28f1c1988ca4138e98d2e2fa?nocache=1)


### Notes

Project sponsored by [WebFolder](https://webfolder.io)
