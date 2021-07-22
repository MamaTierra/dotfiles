#!/bin/bash

set -eufo pipefail

destdir="${HOME}/Software/guake"

echo "*** Install guake ***"
rm -rf ${destdir}
mkdir -p ${destdir}
git clone https://github.com/MamaTierra/guake $destdir

# Install dependencies
${destdir}/scripts/bootstrap-dev-debian.sh run make

# Install guake
make -C ${destdir}
sudo make -C ${destdir} install
echo "*** Install guake done ***"