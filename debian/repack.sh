#!/bin/sh
set -eu
VER=""
while [ $# -gt 1 ]; do
	case "$1" in
		"--upstream-version")
			VER="$2"
			shift
			;;
		*)
			echo "Unknown parameter $1" >&2
			exit 1
			;;
	esac
	shift
done
INFILE="$1"
shift

echo "Repacking source to remove non-free files..."

set -x
PKG="beets"
DIRNAME="$PKG-$VER+dfsg.orig"
mkdir "$DIRNAME"
tar -x --strip-component=1 -C "$DIRNAME" -f "$INFILE"
cp /usr/share/javascript/backbone/backbone.js "$DIRNAME/beetsplug/web/static/backbone.js"
cp /usr/share/javascript/jquery/jquery.js "$DIRNAME/beetsplug/web/static/jquery.js"
cp /usr/share/javascript/underscore/underscore.js "$DIRNAME/beetsplug/web/static/underscore.js"
find "$DIRNAME" -name '.DS_Store' -delete
GZIP="--best" tar -cz --owner root --group root --mode a+rX \
    -f "${PKG}_$VER+dfsg.orig.tar.gz" "$DIRNAME"
rm -f "$INFILE"
rm -rf "$DIRNAME"
