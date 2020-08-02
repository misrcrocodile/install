
# !This is docker env auto install code
# Setup user
USERNAME="YOUR_USER_HERE"
PASSWORD="YOUR_PASSWORD_HERE"
sudo useradd -m -p $(openssl passwd -1 ${PASSWORD}) -s /bin/bash -G sudo ${USERNAME}
echo "${PASSWORD}" | sudo -s sleep 1 && sudo su - ${USERNAME}

# Install fundamental package: Build-essential, git, vim-gnome

sudo apt update
sudo apt install build-essential git vim -y

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

wget https://raw.githubusercontent.com/misscrocodile/install/master/.vimrc_pre-install -O ~/.vimrc
vim -c 'PluginInstall' -c 'qa!'

wget https://raw.githubusercontent.com/misscrocodile/install/master/.vimrc -O ~/.vimrc

# Install Docker
sudo apt install docker.io docker-compose -y
sudo systemctl enable --now docker
