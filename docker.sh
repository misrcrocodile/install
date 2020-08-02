# !This is docker env auto install code
# 1. Setup user
USERNAME="YOUR_USERNAME_HERE"
PASSWORD="YOUR_PASSWORD_HERE"
sudo useradd -m -p $(openssl passwd -1 ${PASSWORD}) -s /bin/bash -G sudo ${USERNAME}
sudo usermod -aG sudo ${USERNAME}

# 2. Install fundamental package: Build-essential, git, vim-gnome
sudo apt update
sudo apt install build-essential git vim -y

# 3. Install Docker
sudo apt install docker.io docker-compose -y
sudo systemctl enable --now docker

# 4. Config Vim
sudo -u ${USERNAME} git clone https://github.com/VundleVim/Vundle.vim.git /home/${USERNAME}/.vim/bundle/Vundle.vim

sudo -u ${USERNAME} wget https://raw.githubusercontent.com/misscrocodile/install/master/.vimrc_pre-install -O /home/${USERNAME}/.vimrc

sudo -u ${USERNAME} vim -c 'PluginInstall' -c 'qa!'

sudo -u ${USERNAME} wget https://raw.githubusercontent.com/misscrocodile/install/master/.vimrc -O /home/${USERNAME}/.vimrc

# 5. Switch User
echo "${PASSWORD}" | sudo -s sleep 1 && sudo su - ${USERNAME}