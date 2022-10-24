apt-get update -y
apt-get upgrade -y

apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

cp -R * /var/www/html/

git pull && git push