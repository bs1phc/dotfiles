#!/usr/bin/env bash

Author: @bs1phc


echo '--------------------'
echo '|                  |'
echo '|    Hi user       |'
echo '| u are installing |'
echo '| i3-gaps          |'
echo '|                  |'
echo '--------------------'

apt-get udpate -y


# i3 gaps dependencies https://github.com/Airblader/i3/wiki/Building-from-source
apt-get install dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev -y

apt-get install make git build-essential autoconf pkg-config
cd /opt

#Building
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps


autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make && make install



#lets install some fonts
apt-get install fonts-powerline -y
apt-get install fonts-font-awesome -y
apt-get install fonts-firacode -y

cd ~/Downloads
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install-sh


echo "Done Enjoy"



