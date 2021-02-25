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
## https://github.com/sqlectron/sqlectron-gui/releases/tag/v1.35.0
wget https://github.com/sqlectron/sqlectron-gui/releases/download/v1.35.0/sqlectron_1.35.0_amd64.deb
sudo apt install sqlelectron*_amd64.deb
