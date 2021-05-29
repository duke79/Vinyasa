## Wifi driver
# sudo lshw -C network # check driver
# sudo airmon-ng # check driver
sudo apt-get install broadcom-sta-dkms
sudo modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
sudo modprobe wl

#VSCode
# Download from : https://code.visualstudio.com/download
sudo apt install ./Downloads/code_*.deb

#Stremio
# Download from: https://www.stremio.com/downloads
cd Downloads
wget http://mirrors.kernel.org/ubuntu/pool/multiverse/f/fdk-aac/libfdk-aac1_0.1.6-1_amd64.deb
sudo apt install ./libfdk-aac1_*_amd64.deb
sudo apt install ./stremio*amd64.deb
# wget https://github.com/Stremio/stremio-bugs/issues/243#issuecomment-754149141
wget http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/libx264-152_0.152.2854+gite9a5903-2_amd64.deb
sudo apt install libx264*_amd64.deb

#Albert
sudo apt install albert

# python/pip
sudo apt-get install python3-pip

# sqlelectron
## https://github.com/sqlectron/sqlectron-gui/releases
## 1.30.0 gave no errors, 1.35.0 & 1.34.0 threw this error -
##    The following packages have unmet dependencies:
##    sqlectron : Depends: libappindicator3-1 but it is not installable
##    E: Unable to correct problems, you have held broken packages.                                              
wget https://github.com/sqlectron/sqlectron-gui/releases/download/v1.30.0/Sqlectron_1.30.0_amd64.deb
sudo apt install ./sqlectron_*_amd64.deb
