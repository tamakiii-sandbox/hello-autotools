#!/bin/sh

die()
{
    echo "$@" >&2
    exit 1
}

mkdir -p etc
aclocal || die "aclocal failed"
automake --add-missing --force-missing --copy --foreign || die "automake failed"
autoreconf || die "autoreconf failed"
