# Development infrastructure

## Docker

### Chained images

There are tiny picese of images which I use trying to build combinations to
download less.
I'm trying to put big and rarely changed layers closer to base
to have those laysers downloaded as rarely as possible to save time and network traffic.


#### Base

I don't have own base image.
I use [docker.pkg.github.com/umputun/baseimage/app:v1.6.1](https://github.com/umputun/baseimage/tree/master/base.alpine)

#### Dev Tools (20 MB)

Some tools that are usually good to have in a developer's environment
including: _sudo, git, bash._
I don't include this piece to CI or prod images.

I change decisions of what should be included to dev-tools pretty often
that's why I put the image closer to end.

#### Chromium (416 MB)

Chromium with some necessary dependencies and fonts.
I use it for automated testing.

It's the heavies image that's why I put it to the beginning.
I'm going to update this image as rarely as possible.

#### NodeJS (33 MB)

NodeJS without NPM. Useful for prod images.

#### NPM (46 MB)

NPM. I suppose it's rarely changed so it's good to keep it closer to the beginning
But it's not very big, that's why it gives the road to Chromium or Java.


#### Open JDK 11 + Maven (280 MB)

JDK + Maven. Useful in Java projects

#### JVM: Open JDK 11 (177 MB)

JVM without JDK. Useful for prod images.

### Result images

#### "chromium-npm" and "chromium-npm-devtools"

Are useful to develop NPM projects and run tests in browser.

#### "npm" and "npm-devtools"

Are useful to develop NPM projects when in-browser testing is not configured
yet.

#### nodejs

Is useful to run JS projects.

#### jvm11

Is useful to run Java projects.

#### "jdk11mvn" and "jdk11mvn-devtools"

Are useful to develop Java projects and run tests.


#### "chromium-npm-jdk11mvn" and "chromium-npm-jdk11mvn-devtools"

Are useful to develop Java projects which have frontent part that is built with NPM.

