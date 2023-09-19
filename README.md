# Windows binaries of GNU Wget 1.21.4

[![wget](https://github.com/webfolderio/wget-windows/actions/workflows/wget.yml/badge.svg)](https://github.com/webfolderio/wget-windows/actions/workflows/wget.yml)

This is a command-line tool that can be used to retrieve files via the HTTP, HTTPS, and FTP protocols.

GNU Wget is a free software package that allows users to retrieve files through the most commonly used Internet protocols,
including HTTP, HTTPS, FTP, and FTPS. As a non-interactive command-line tool,
it can be easily integrated into scripts, cron jobs, and terminals.

## How to use wget

To learn how to use Wget, please refer to the official GNU Wget manual by clicking the link below.

[https://www.gnu.org/software/wget/manual/wget.html](https://www.gnu.org/software/wget/manual/wget.html)

### Build Environment

Wget has been built using GitHub Actions and cross-compiled with mingw64 on Ubuntu, using GNU/gcc 9.3.
It is completely safe to use and free from viruses.

All the necessary libraries have been **statically linked**, so there is no need to use any third-party DLL.

### Wget features

The Windows version of Wget includes all features of Wget except for NLS (the multi-language version).

GnuTLS version:

`+cares +digest +gpgme +https +ipv6 +iri +large-file +metalink -nls +ntlm +opie +psl +ssl/gnutls`

OpenSSL version:

`+cares +digest +gpgme +https +ipv6 +iri +large-file +metalink -nls +ntlm +opie +psl +ssl/openssl`

### Local Build

To build Wget for Windows on WSL 1 or 2 (Debian/Ubuntu), please follow these steps.

```bash
sudo apt-get install -y mingw-w64 mingw-w64-tools mingw-w64-i686-dev gcc
sudo apt-get install -y make m4 pkg-config automake gettext
cd /tmp
git clone https://github.com/webfolderio/wget-windows.git
cd wget-windows
./build.sh
```

### Notes

Project sponsored by [WebFolder](https://webfolder.io)
