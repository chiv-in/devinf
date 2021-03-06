### Based on `umputun/baseimage/app:v1.7.0` (`alpine:3.13`)
The images below are based on [ghcr.io/umputun/baseimage/app:v1.7.0](https://github.com/umputun/baseimage/pkgs/container/baseimage%2Fapp/2357392) that is based on `alpine:3.13`.

It has following packages installed:

* su-exec (0.2-r1)
* tzdata (2021a-r0)
* curl (7.76.1-r0)
* ca-certificates (20191127-r5)
* dumb-init (1.2.5-r0)


#### [docker/jdk11mvn-devtools/01]
_(2021-06-21)_

Image [jdk11mvn-01-devtools-01].

Based on [jdk11mvn-01](#dockerjdk11mvn01).

Installed packages:

* sudo (1.9.5p2-r0)
* bash (5.1.0-r0)
* rsync (3.2.3-r1)
* git (2.30.2-r0)
* jq (1.6-r1)


#### [docker/npm-devtools/01]
_(2021-06-21)_

Image [npm-01-devtools-01].

Based on [npm-01](#dockernpm01).

Installed packages: same as in [jkd11mvn-devtools-01](dockerjdk11mvn-devtools01)

#### [docker/chromium-npm-jdk11mvn-devtools/01]
_(2021-06-21)_

Image [chromium-01-npm-01-jdk11mvn-01-devtools-01].

Based on [chromium-01-npm-01-jdk11mvn-01](#dockerchromium-npm-jdk11mvn01).

Installed packages: same as in [jkd11mvn-devtools-01](dockerjdk11mvn-devtools01)


#### [docker/chromium-npm-jdk11mvn/01]
_(2021-06-21)_

Image [chromium-01-npm-01-jdk11mvn-01].

Based on [chromium-01-npm-01](#dockerchromium-npm01).

Installed packages: same as in [jkd11mvn-01](dockerjdk11mvn01)


#### [docker/chromium-npm-devtools/01]
_(2021-06-21)_

Image [chromium-01-npm-01-devtools-01].

Based on [chromium-01-npm-01](#dockerchromium-npm01)

Installed packages: same as in [jkd11mvn-devtools-01](dockerjdk11mvn-devtools01)


#### [docker/chromium-npm/01]
_(2021-06-21)_

Image [chromium-01-npm-01].

Based on [chromium-01](#dockerchromium01)

Installed packages: same as in [npm-01](#dockernpm01)


#### [docker/npm/01]
_(2021-06-21)_

Image [npm-01].

Installed packages:

* nodejs (14.16.1-r1)
* npm (14.16.1-r1)

#### [docker/nodejs/01]
_(2021-06-21)_

Image [nodejs-01].

Installed packages:

* nodejs (14.16.1-r1)

#### [docker/chromium/01]
_(2021-06-21)_

Image [chromium-01].

Installed packages:

* chromium (86.0.4240.111-r0)
* font-noto (0_git20190623-r2)
* font-noto-emoji (0_git20200916-r3)
* freetype (2.10.4-r1)
* freetype-dev (2.10.4-r1)
* harfbuzz (2.7.4-r1)
* ttf-freefont (20120503-r1)
* nss (3.66-r0)


#### [docker/jvm11/01]
_(2021-06-21)_

Image [jmv11-01].

Installed packages:

* openjdk11-jre (11.0.9_p11-r1)

#### [docker/jdk11mvn/01]
_(2021-06-21)_

Image [jdk11mvn-01].

Installed packages:

* openjdk8-jre (8.275.01-r0)
* openjdk11-jre (11.0.9_p11-r1)
* openjdk11-jdk (11.0.9_p11-r1)
* maven (3.6.3-r0)





------------

[jdk11mvn-01-devtools-01]: https://github.com/chiv-in/devinf/packages/635370?version=jdk11mvn-01-devtools-01
[docker/jdk11mvn-devtools/01]: https://github.com/chiv-in/devinf/tree/docker/jdk11mvn-devtools%2F01


[npm-01-devtools-01]: https://github.com/chiv-in/devinf/packages/635370?version=npm-01-devtools-01
[docker/npm-devtools/01]: https://github.com/chiv-in/devinf/tree/docker/npm-devtools%2F01

[chromium-01-npm-01-jdk11mvn-01-devtools-01]: https://github.com/chiv-in/devinf/packages/635370?version=chromium-01-npm-01-jdk11mvn-01-devtools-01
[docker/chromium-npm-jdk11mvn-devtools/01]: https://github.com/chiv-in/devinf/tree/docker/chromium-npm-jdk11mvn-devtools%2F01

[chromium-01-npm-01-jdk11mvn-01]: https://github.com/chiv-in/devinf/packages/635370?version=chromium-01-npm-01-jdk11mvn-01
[docker/chromium-npm-jdk11mvn/01]: https://github.com/chiv-in/devinf/tree/docker/chromium-npm-jdk11mvn%2F01

[chromium-01-npm-01-devtools-01]: https://github.com/chiv-in/devinf/packages/635370?version=chromium-01-npm-01-devtools-01
[docker/chromium-npm-devtools/01]: https://github.com/chiv-in/devinf/tree/docker/chromium-npm-devtools%2F01

[chromium-01-npm-01]: https://github.com/chiv-in/devinf/packages/635370?version=chromium-01-npm-01
[docker/chromium-npm/01]: https://github.com/chiv-in/devinf/tree/docker/chromium-npm%2F01

[npm-01]: https://github.com/chiv-in/devinf/packages/635370?version=npm-01
[docker/npm/01]: https://github.com/chiv-in/devinf/tree/docker/npm%2F01

[nodejs-01]: https://github.com/chiv-in/devinf/packages/635370?version=nodejs-01
[docker/nodejs/01]: https://github.com/chiv-in/devinf/tree/docker/nodejs%2F01

[chromium-01]: https://github.com/chiv-in/devinf/packages/635370?version=chromium-01
[docker/chromium/01]: https://github.com/chiv-in/devinf/tree/docker/chromium%2F01

[jvm11-01]: https://github.com/chiv-in/devinf/packages/635370?version=jvm11-01
[docker/jvm11/01]: https://github.com/chiv-in/devinf/tree/docker/jvm11%2F01

[jdk11mvn-01]: https://github.com/chiv-in/devinf/packages/635370?version=jdk11mvn-01
[docker/jdk11mvn/01]: https://github.com/chiv-in/devinf/tree/docker/jdk11mvn%2F01




















### Based on `umputun/baseimage/app:v1.6.1` (`alpine:3.12`)

The images below are based on [docker.pkg.github.com/umputun/baseimage/app:v1.6.1](https://github.com/umputun/baseimage/packages/237335) that is based on `alpine:3.12`.

It has following packages installed:

* su-exec
* tzdata
* curl
* ca-certificates
* dumb-init

#### [docker/jdk11mvn-devtools/00]
_(2021-02-25)_

Image [jdk11mvn-00-devtools-00].

Based on [jdk11mvn-00](#dockerjdk11mvn00).

Installed packages:

* sudo (1.9.5p2-r0)
* bash (5.0.17-r0)
* rsync (3.1.3-r3)
* git (2.26.2-r0)
* jq (1.6-r1)


#### [docker/npm-devtools/00]
_(2021-02-23)_

Image [npm-00-devtools-00].

Based on [npm-00](#dockernpm00).

Installed packages:

* sudo (1.9.5p2-r0)
* bash (5.0.17-r0)
* rsync (3.1.3-r3)
* git (2.26.2-r0)
* jq (1.6-r1)

#### [docker/chromium-npm-jdk11mvn-devtools/00]
_(2021-02-23)_

Image [chromium-00-npm-00-jdk11mvn-00-devtools-00].

Based on [chromium-00-npm-00-jdk11mvn-00](#dockerchromium-npm-jdk11mvn00).

Installed packages:

* sudo (1.9.5p2-r0)
* bash (5.0.17-r0)
* rsync (3.1.3-r3)
* git (2.26.2-r0)
* jq (1.6-r1)


#### [docker/chromium-npm-jdk11mvn/00]
_(2021-02-23)_

Image [chromium-00-npm-00-jdk11mvn-00].

Based on [chromium-00-npm-00](#dockerchromium-npm00).

Installed packages:

* openjdk8-jre (8.275.01-r0)
* openjdk11-jre (11.0.9_p11-r0)
* openjdk11-jdk (11.0.9_p11-r0)
* maven (3.6.3-r0)


#### [docker/chromium-npm-devtools/00]
_(2021-02-23)_

Image [chromium-00-npm-00-devtools-00].

Based on [chromium-00-npm-00](#dockerchromium-npm00)

Installed packages:

* sudo (1.9.5p2-r0)
* bash (5.0.17-r0)
* rsync (3.1.3-r3)
* git (2.26.2-r0)
* jq (1.6-r1)

#### [docker/chromium-npm/00]
_(2021-02-23)_

Image [chromium-00-npm-00].

Based on [chromium-00](#dockerchromium00)

Installed packages:

* nodejs (12.20.1-r0)
* npm (12.20.1-r0)

#### [docker/npm/00]
_(2021-02-23)_

Image [npm-00].

Installed packages:

* nodejs (12.20.1-r0)
* npm (12.20.1-r0)

#### [docker/nodejs/00]
_(2021-02-23)_

Image [nodejs-00].

Installed packages:

* nodejs (12.20.1-r0)

#### [docker/chromium/00]
_(2021-02-23)_

Image [chromium-00].

Installed packages:

* chromium (86.0.4240.111-r0)
* font-noto (0_git20190623-r2)
* font-noto-emoji (0_git20200916-r1)
* freetype (2.10.4-r0)
* freetype-dev (2.10.4-r0)
* harfbuzz (2.6.6-r0)
* ttf-freefont (20120503-r1)
* nss (3.60-r0)


#### [docker/jvm11/00]
_(2021-02-23)_

Image [jmv11-00].

Installed packages:

* openjdk11-jre (11.0.9_p11-r0)

#### [docker/jdk11mvn/00]
_(2021-02-23)_

Image [jdk11mvn-00].

Installed packages:

* openjdk8-jre (8.275.01-r0)
* openjdk11-jre (11.0.9_p11-r0)
* openjdk11-jdk (11.0.9_p11-r0)
* maven (3.6.3-r0)



------------

[jdk11mvn-00-devtools-00]: https://github.com/chiv-in/devinf/packages/635370?version=jdk11mvn-00-devtools-00
[docker/jdk11mvn-devtools/00]: https://github.com/chiv-in/devinf/tree/docker/jdk11mvn-devtools%2F00


[npm-00-devtools-00]: https://github.com/chiv-in/devinf/packages/635370?version=npm-00-devtools-00
[docker/npm-devtools/00]: https://github.com/chiv-in/devinf/tree/docker/npm-devtools%2F00

[chromium-00-npm-00-jdk11mvn-00-devtools-00]: https://github.com/chiv-in/devinf/packages/635370?version=chromium-00-npm-00-jdk11mvn-00-devtools-00
[docker/chromium-npm-jdk11mvn-devtools/00]: https://github.com/chiv-in/devinf/tree/docker/chromium-npm-jdk11mvn-devtools%2F00

[chromium-00-npm-00-jdk11mvn-00]: https://github.com/chiv-in/devinf/packages/635370?version=chromium-00-npm-00-jdk11mvn-00
[docker/chromium-npm-jdk11mvn/00]: https://github.com/chiv-in/devinf/tree/docker/chromium-npm-jdk11mvn%2F00

[chromium-00-npm-00-devtools-00]: https://github.com/chiv-in/devinf/packages/635370?version=chromium-00-npm-00-devtools-00
[docker/chromium-npm-devtools/00]: https://github.com/chiv-in/devinf/tree/docker/chromium-npm-devtools%2F00

[chromium-00-npm-00]: https://github.com/chiv-in/devinf/packages/635370?version=chromium-00-npm-00
[docker/chromium-npm/00]: https://github.com/chiv-in/devinf/tree/docker/chromium-npm%2F00

[npm-00]: https://github.com/chiv-in/devinf/packages/635370?version=npm-00
[docker/npm/00]: https://github.com/chiv-in/devinf/tree/docker/npm%2F00

[nodejs-00]: https://github.com/chiv-in/devinf/packages/635370?version=nodejs-00
[docker/nodejs/00]: https://github.com/chiv-in/devinf/tree/docker/nodejs%2F00

[chromium-00]: https://github.com/chiv-in/devinf/packages/635370?version=chromium-00
[docker/chromium/00]: https://github.com/chiv-in/devinf/tree/docker/chromium%2F00

[jvm11-00]: https://github.com/chiv-in/devinf/packages/635370?version=jvm11-00
[docker/jvm11/00]: https://github.com/chiv-in/devinf/tree/docker/jvm11%2F00

[jdk11mvn-00]: https://github.com/chiv-in/devinf/packages/635370?version=jdk11mvn-00
[docker/jdk11mvn/00]: https://github.com/chiv-in/devinf/tree/docker/jdk11mvn%2F00
