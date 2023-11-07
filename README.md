# Development infrastructure


## Chained docker images

### Image pieces

There are tiny pieces of images that I combine to build images. I try to get a result that lets me to download less. I put big and rarely changed layers closer to base
in order to have those laysers downloaded as rarely as possible to save time and network traffic.

#### Base

I don't have own base image.
I use [ghcr.io/umputun/baseimage/app:v1.11.0](https://github.com/umputun/baseimage/tree/v1.11.0/base.alpine).
That configures `app` user and enforces non-root execution by default.

#### Dev Tools

| [devtools](docker/image-pieces/devtools/Dockerfile) | |
| --- | --- |
| **extracted** | 22 MB |
| **compressed** | 10 MB |

Some tools that are usually good to have in a developer's environment
including: _sudo, git, bash._
I don't include this piece to CI or prod images.

I change decisions of what should be included to dev-tools pretty often
that's why I put the image closer to end.

#### Chromium

| [chromium](docker/image-pieces/chromium/Dockerfile) | |
| --- | --- |
| **extracted** | 600 MB |
| **compressed** | 250 MB |


Chromium with some necessary dependencies and fonts.
I use it for automated testing.

It's the heavies image, that's why I put it to the beginning.
I'm going to update this image as rarely as possible.

#### NodeJS

| [nodejs](docker/image-pieces/nodejs/Dockerfile) | |
| --- | --- |
| **extracted** | 51 MB |
| **compressed** | 15 MB |

NodeJS without NPM. Useful for prod images.

#### NPM

| [npm](docker/image-pieces/npm/Dockerfile) | |
| --- | --- |
| **extracted** | 63 MB |
| **compressed** | 18 MB |

NPM and Yarn. I suppose it's rarely changed so it's good to keep it closer to the beginning
But it's not very big, that's why it gives the road to Chromium or Java.


#### Open JDK 17 + Maven

| [jdk17mvn](docker/image-pieces/jdk17mvn/Dockerfile) | |
| --- | --- |
| **extracted** | 303 MB |
| **compressed** | 160 MB |

JDK + Maven. Useful in Java projects

#### JVM: Open JDK 17

| [jvm17](docker/image-pieces/jvm17/Dockerfile) | |
| --- | --- |
| **extracted** | 200 MB |
| **compressed** | 70 MB |

JVM without JDK. Useful for prod images.



### Result images

#### Chromium + NPM

[chromium-npm](https://github.com/chiv-in/devinf/packages/635370?version=chromium-03-npm-03) and [chromium-npm-devtools](https://github.com/chiv-in/devinf/packages/635370?version=chromium-03-npm-03-devtools-02)
are useful to develop NPM projects and run tests in browser.

#### NPM

[npm](https://github.com/chiv-in/devinf/packages/635370?version=npm-02) and [npm-devtools](https://github.com/chiv-in/devinf/packages/635370?version=npm-02-devtools-02)
are useful to develop NPM projects when in-browser testing is not configured
yet.

#### nodejs

[nodejs](https://github.com/chiv-in/devinf/packages/635370?version=nodejs-02)
is useful to run JS projects.

#### JVM

[jvm17](https://github.com/chiv-in/devinf/packages/635370?version=jvm17-00)
is useful to run Java projects.

#### JDK + Maven

[jdk17mvn](https://github.com/chiv-in/devinf/packages/635370?version=jdk17mvn-00) and [jdk17mvn-devtools](https://github.com/chiv-in/devinf/packages/635370?version=jdk17mvn-00-devtools-00)
are useful to develop Java projects and run tests.


#### Chromium + NPM + JDK + Maven

[chromium-npm-jdk17mvn](https://github.com/chiv-in/devinf/packages/635370?version=chromium-03-npm-03-jdk17mvn-00) and [chromium-npm-jdk17mvn-devtools](https://github.com/chiv-in/devinf/packages/635370?version=chromium-03-npm-03-jdk17mvn-00-devtools-00)
are useful to develop Java projects which have frontend part that is built with NPM.



### Image tags

You can see weird docker tags like: `chromium-03-npm-03-jdk17mvn-00-devtools-00`.
The last number is meaningful, that means it relates to git tag [docker/chromium-npm-jdk17mvn-devtools-00](https://github.com/chiv-in/devinf/releases/tag/docker%2Fchromium-npm-jdk17mvn-devtools%2F00)

The beginning part reflects the base image, in this particular example it means
that image was based on `chromium-03-npm-03-jdk17mvn-00` that relates to git tag
[docker/chromium-npm-jdk17mvn-00](https://github.com/chiv-in/devinf/releases/tag/docker%2Fchromium-npm-jdk17mvn%2F00)

## Solid docker images

### Editorconfig Evj Checker

[chiv-editorconfig-checker](https://github.com/chiv-in/devinf/pkgs/container/devinf%2Fchiv-editorconfig-checker)
Check editorconfig compliance and performs few other checks.
