#!/bin/sh
set -e
DIR="$( cd "$( dirname "$0" )" && pwd )"
CUR=$(pwd)

echo "The tool is in $DIR"
echo "The project that is being check is in $PROJECT_PATH"
echo node@$(node --version)

echo "Checking editorconfig..."
node $DIR/node_modules/.bin/editorconfig-checker \
	-exclude "$IGNORE" \
	"$PROJECT_PATH"
echo "Done successfully"
