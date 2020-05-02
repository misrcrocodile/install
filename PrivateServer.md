# Instruction about installing my own private server

## 1. Environment app
```
# git, openssh, curl, ...
sudo apt get git openssh-server curl wget build-essential guake

# nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
source ~/.profile 
nvm install stable --latest-npm
npm alias default stable
```

## 2. Nginx

### 2.1. Install Nginx server
```
sudo apt-get update
sudo apt-get install nginx
sudo nginx -v
```