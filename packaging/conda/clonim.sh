#!/bin/sh
# Runs the clonim AppDir installed under $PREFIX/lib/clonim, like its AppRun.
set -eu
appdir=$(CDPATH= cd -- "$(dirname -- "$0")/../lib/clonim" && pwd)
PATH="$appdir/usr/bin:$PATH"
export PATH
exec "$appdir/usr/bin/clonim" "$@"
