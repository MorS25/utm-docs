#!/usr/bin/env bash
set -x
set -o errexit
set -o nounset
set -o pipefail

TAG=$1
RMCMD1="git tag -d $TAG"
RMCMD2="git push origin :refs/tags/$TAG"
CMD1="git tag -f $TAG"
CMD2="git push origin refs/tags/$TAG"

git pull origin master
$RMCMD1 && $RMCMD2
$CMD1 && $CMD2

exit
