#!/bin/sh
REF=$@
echo $@ | \
    sed -E 's|^refs/heads/master$|latest|' | \
    sed -E 's|^refs/pull/(.*)|pr-\1|' | \
    sed -E 's|^refs/tags/docker/([a-z][a-z0-9]*[-/])+([0-9]*)|\2|' | \
    sed -E 's|^refs/(heads\|tags)/(.*)|\2|' | \
    sed -E 's|/|-|g'
