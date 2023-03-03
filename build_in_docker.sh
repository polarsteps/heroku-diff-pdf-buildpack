#!/bin/bash

# Note: If you run this command:
#   docker run  -v $(pwd):/app/ heroku/heroku:22 bash /app/build_in_docker.sh
#
#   The output binary will be placed in ./diff-pdf-${VERSION}/diff-pdf
set -e

cd /app || true

VERSION=${VERSION:-0.5}

apt-get update -qq

apt-get install -qq g++ make autoconf libpoppler-glib-dev libwxgtk3.0-gtk3-dev poppler-utils

wget -q https://github.com/vslavik/diff-pdf/releases/download/v${VERSION}/diff-pdf-${VERSION}.tar.gz
tar xvf diff-pdf-${VERSION}.tar.gz
cd diff-pdf-${VERSION}
./bootstrap
./configure
make

echo "Compilation successfully finished"
