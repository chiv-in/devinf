#!/bin/sh
set -e
DIR="$( cd "$( dirname "$0" )" && pwd )"
CUR=$(pwd)

echo "The tool is in $DIR"
echo "The project that is being check is in $PROJECT_PATH"
echo "node@$(node --version)"

echo -e "\n>>> Start checking that files satisfy the .editorconfig"
node $DIR/node_modules/.bin/editorconfig-checker \
	-exclude "$IGNORE" \
	"$PROJECT_PATH"
echo -e "<<< Done with checking that files satisfy the .editorconfig\n"

cd $PROJECT_PATH
echo -e "\n>>> Start checking for tabs in a middle of a line\033[0;31m"
find . -type f \
		-not -name '*.iml' \
		-not -name '*.png' \
		-not -name '*.zip' \
		-not -path '**/node_modules/**' \
		-not -path '**/.next/**' \
		-not -path '**/target/**' \
		-not -path '**/.idea/**' \
		-not -path './.git/**' \
		-not -path './mongo-dev-stuff/db/**' \
		-exec grep -HnE $'[^#/-](\S| )\t+' {} \; \
	| grep . && printf '\033[0m' && exit 1 || printf '\033[0m'
echo -e "<<< Done with checking for tabs in a middle of a line\n"
cd $CUR
