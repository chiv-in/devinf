# Development infrastructure


## Docker

### Image pieces

There are tiny pieces of images that I combine to build images. I try to get a result that lets me to download less. I put big and rarely changed layers closer to base
in order to have those laysers downloaded as rarely as possible to save time and network traffic.

#### Base

I don't have own base image.
I use [docker.pkg.github.com/umputun/baseimage/app:v1.9.2](https://github.com/umputun/baseimage/tree/v1.9.2/base.alpine).
That configures `app` user and enforces non-root execution by default.

#### Dev Tools

| [devtools](docker/image-pieces/devtools/Dockerfile) | |
| --- | --- |
| **extracted** | 20 MB |
| **compressed** | 10 MB |

Some tools that are usually good to have in a developer's environment
including: _sudo, git, bash._
I don't include this piece to CI or prod images.

I change decisions of what should be included to dev-tools pretty often
that's why I put the image closer to end.

#### Chromium

| [chromium](docker/image-pieces/chromium/Dockerfile) | |
| --- | --- |
| **extracted** | 344 MB |
| **compressed** | 175 MB |


Chromium with some necessary dependencies and fonts.
I use it for automated testing.

It's the heavies image, that's why I put it to the beginning.
I'm going to update this image as rarely as possible.

#### NodeJS

| [nodejs](docker/image-pieces/nodejs/Dockerfile) | |
| --- | --- |
| **extracted** | 38 MB |
| **compressed** | 15 MB |

NodeJS without NPM. Useful for prod images.

#### NPM

| [npm](docker/image-pieces/npm/Dockerfile) | |
| --- | --- |
| **extracted** | 54 MB |
| **compressed** | 19 MB |

NPM and Yarn. I suppose it's rarely changed so it's good to keep it closer to the beginning
But it's not very big, that's why it gives the road to Chromium or Java.


#### Open JDK 11 + Maven

| [jdk11mvn](docker/image-pieces/jdk11mvn/Dockerfile) | |
| --- | --- |
| **extracted** | 280 MB |
| **compressed** | 136 MB |

JDK + Maven. Useful in Java projects

#### JVM: Open JDK 11

| [jvm11](docker/image-pieces/jvm11/Dockerfile) | |
| --- | --- |
| **extracted** | 177 MB |
| **compressed** | 63 MB |

JVM without JDK. Useful for prod images.



### Result images

#### Chromium + NPM

[chromium-npm](https://github.com/chiv-in/devinf/packages/635370?version=chromium-01-npm-01) and [chromium-npm-devtools](https://github.com/chiv-in/devinf/packages/635370?version=chromium-01-npm-01-devtools-01)
are useful to develop NPM projects and run tests in browser.

#### NPM

[npm](https://github.com/chiv-in/devinf/packages/635370?version=npm-01) and [npm-devtools](https://github.com/chiv-in/devinf/packages/635370?version=npm-01-devtools-01)
are useful to develop NPM projects when in-browser testing is not configured
yet.

#### nodejs

[nodejs](https://github.com/chiv-in/devinf/packages/635370?version=nodejs-01)
is useful to run JS projects.

#### JVM

[jvm11](https://github.com/chiv-in/devinf/packages/635370?version=jvm11-01)
is useful to run Java projects.

#### JDK + Maven

[jdk11mvn](https://github.com/chiv-in/devinf/packages/635370?version=jdk11mvn-01) and [jdk11mvn-devtools](https://github.com/chiv-in/devinf/packages/635370?version=jdk11mvn-01-devtools-01)
are useful to develop Java projects and run tests.


#### Chromium + NPM + JDK + Maven

[chromium-npm-jdk11mvn](https://github.com/chiv-in/devinf/packages/635370?version=chromium-01-npm-01-jdk11mvn-01) and [chromium-npm-jdk11mvn-devtools](https://github.com/chiv-in/devinf/packages/635370?version=chromium-01-npm-01-jdk11mvn-01-devtools-01)
are useful to develop Java projects which have frontend part that is built with NPM.



### Image tags

You can see weird docker tags like: `chromium-00-npm-00-jdk11mvn-00-devtools-00`.
The last number is meaningful, that means it relates to git tag [docker/chromium-npm-jdk11mvn-devtools-00](https://github.com/chiv-in/devinf/releases/tag/docker%2Fchromium-npm-jdk11mvn-devtools%2F00)

The beginning part reflects the base image, in this particular example it means
that image was based on `chromium-00-npm-00-jdk11mvn-00` that relates to git tag
[docker/chromium-npm-jdk11mvn-00](https://github.com/chiv-in/devinf/releases/tag/docker%2Fchromium-npm-jdk11mvn%2F00)
