sudo apt install libnss3-tools -y

wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64
cp mkcert-v1.4.3-linux-amd64 /usr/local/bin/mkcert
sudo chmod +x /usr/local/bin/mkcert
mkcert -install


# Generating Cert for Host --> You have to install it on your's host
#to have SSL connection
#sudo mkcert -pkcs12 192.168.200.100 backend 192.168.200.101 192.168.200.102 192.168.200.99 
# meaby inline?