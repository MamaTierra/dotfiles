#!/bin/bash

echo "*** Install guake ***"
destdir="${HOME}/Software/guake"
rm -rf ${destdir}
mkdir -p ${destdir}
git clone https://github.com/MamaTierra/guake $destdir

# Install dependencies
${destdir}/scripts/bootstrap-dev-debian.sh run make

# Install guake
make -C ${destdir}
sudo make -C ${destdir} install
echo "*** Install guake done ***"

echo "*** Install Joplin ***"
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
echo "*** Install Joplin done ***"

echo "*** Install rclone ***"
curl https://rclone.org/install.sh | sudo bash
echo "*** Install rclone done ***"