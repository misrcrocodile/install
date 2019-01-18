# Create temp folder
mkdir ~/temp
cd ~/temp

# Install fundamental package
sudo apt update
sudo apt install build-essential -y
sudo apt install git -y

sudo apt install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

wget https://raw.githubusercontent.com/misscrocodile/install/master/.vimrc -O ~/.vimrc
vim -c 'PluginInstall' -c 'qa!'

# Install nodejs
wget https://nodejs.org/dist/v10.15.0/node-v10.15.0-linux-x64.tar.xz
tar xf node-v10.15.0-linux-x64.tar.xz

cd node-v10.15.0-linux-x64
sudo cp -R * /usr/local/

sudo npm install -g pm2
sudo npm install -g http-server

rm -rf ~/temp
