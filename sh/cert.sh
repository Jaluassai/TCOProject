sudo apt install libnss3-tools -y

wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64
cp mkcert-v1.4.3-linux-amd64 /usr/local/bin/mkcert
sudo chmod +x /usr/local/bin/mkcert
mkcert -install

echo "mkcert has been instaled"
# Generating Cert for Host --> You have to install it on your's host
#to have SSL connection

# meaby inline?
#^^^ TO DO SO, REVERSE Vagrant