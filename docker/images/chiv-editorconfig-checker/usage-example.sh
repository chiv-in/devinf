#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CUR=$(pwd)

docker run \
	--rm \
	-v $CUR:/project \
	ghcr.io/chiv-in/devinf/chiv-editorconfig-checker:latest

# Or you can override the ignoring expression by using an environment variable:
#
# docker run \
# 	--rm \
# 	-v $CUR:/project \
# 	-e IGNORE='**/node_modules/**' \
# 	ghcr.io/chiv-in/devinf/chiv-editorconfig-checker:latest
