#Ternimal
#sudo apt-get install gnome-terminal

#Snap
sudo apt-get install snap

#Notepad-plus-plus
sudo snap install notepad-plus-plus
sudo snap connect notepad-plus-plus:process-control
sudo snap connect notepad-plus-plus:removable-media
sudo snap connect notepad-plus-plus:hardware-observe
sudo snap connect notepad-plus-plus:cups-control

#Git
sudo apt-get install git
sudo apt-get install kdiff3
git config --global user.email "pulkitsingh01@gmail.com"
git config --global user.name "Pulkit Singh"
#git config --global --remove-section credential #To remove osxkeychain

#.Net | For windows applications
sudo apt-get install mono-complete

#Utils
sudo apt-get install curl
sudo apt-get install unzip

#Gitextensions
curl -s https://api.github.com/repos/gitextensions/gitextensions/releases/latest | grep "http.*GitExtensions-.*-Mono.zip" | cut -d : -f 2,3 | tr -d \" | wget -qi -
ls | grep "GitExtensions-.*-Mono.zip" | xargs unzip -d .
#cd GitExtensions && mono GitExtensions.exe
echo mono $PWD/GitExtensions/GitExtensions.exe > GitExtensions/GitExtensions.sh
#sudo cp GitExtensions/GitExtensions.sh /usr/local/bin
chmod u+x,g+x GitExtensions/GitExtensions.sh
alias gitex='$PWD/GitExtensions/GitExtensions.sh'
#gitex

#GitKraken
sudo snap install gitkraken
sudo snap connect gitkraken:removable-media

#Python
sudo apt-get install python-pip
sudo pip install pipenv # safe with python2, it's safe and it creates no limitations
sudo apt-get install python3-pip
sudo snap install pycharm-community --classic

#Flux
sudo add-apt-repository ppa:nathan-renniewaldock/flux
git clone "https://github.com/xflux-gui/fluxgui.git"
sudo apt-get install python-appindicator python-xdg python-pexpect python-gconf python-gtk2 python-glade2 libxxf86vm1

#MySQL
sudo apt-get install mysql-server #https://support.rackspace.com/how-to/installing-mysql-server-on-ubuntu/
systemctl start mysql #start mysql service
systemctl enable mysql #Launch at reboot
#sudo mysql -u root -p #To launch mysql command line

#MySQL | Config
update user set authentication_string=PASSWORD("pass_pass") where User="root";
GRANT ALL PRIVILEGES ON *.* TO 'vilokanlabs'@'localhost' IDENTIFIED BY 'Dynamic.123';
FLUSH PRIVILEGES;
exit;
CREATE DATABASE alligator;

#MySQLclient
sudo apt-get install emma

#VSCode
sudo apt install snapd
sudo snap install --classic code
