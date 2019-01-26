
# Install nodejs
$PROCESSTYPE=$(uname -m)
NODEJS_LINK="https://nodejs.org/dist/v10.15.0/node-v10.15.0-linux-x64.tar.xz"
if [[ $PROCESSTYPE = armv6* ]]; then
  NODEJS_LINK=https://nodejs.org/dist/v10.15.0/node-v10.15.0-linux-armv6l.tar.xz
fi
wget $NODEJS_LINK -o node-v10.15.0.tar.xz
tar xf node-v10.15.0.tar.xz
cd node-v10.15.0
sudo cp -R * /usr/local/

sudo npm install -g pm2
sudo npm install -g http-server

rm -rf ~/temp