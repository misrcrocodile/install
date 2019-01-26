# Create temp folder
mkdir ~/temp
cd ~/temp

# Install fundamental package: Build-essential, git, vim-gnome
sudo apt update
sudo apt install build-essential git vim-gnome -y

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

wget https://raw.githubusercontent.com/misscrocodile/install/master/.vimrc -O ~/.vimrc
vim -c 'PluginInstall' -c 'qa!'


# Install nodejs

cd ~

mkdir -p installNodejsTemp
cd installNodejsTemp

PROCESS_TYPE=$(uname -m)
NODEJS_LINK='https://nodejs.org/dist/v10.15.0/node-v10.15.0-linux-x64.tar.xz'

if [[ $PROCESS_TYPE = armv6* ]]; then
  NODEJS_LINK='https://nodejs.org/dist/v10.15.0/node-v10.15.0-linux-armv6l.tar.xz'
fi

wget $NODEJS_LINK -O node-v10.15.0.tar.xz
mkdir -p node-v10.15.0
tar xf node-v10.15.0.tar.xz -C node-v10.15.0 --strip-components=1
cd node-v10.15.0
sudo cp -R * /usr/local/

# Install PM2
sudo npm install -g pm2

# Install http-server
sudo npm install -g http-server

# Remove temporatory folder
cd ~
rm -rf installNodejsTemp
