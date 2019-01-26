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
chmod +x nodejs.sh
./nodejs.sh

