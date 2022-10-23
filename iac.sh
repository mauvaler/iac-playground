# Directory creation
mkdir /public
mkdir /adm
mkdir /mkt
mkdir /ti
# Group creation
groupadd GRP_ADM
groupadd GRP_MKT
groupadd GRP_TI
# Set users
useradd guest -m -s /bin/bash -p $(openssl passwd -crypt guest) -G GRP_ADM
useradd guest -m -s /bin/bash -p $(openssl passwd -crypt guest) -G GRP_MKT
useradd guest -m -s /bin/bash -p $(openssl passwd -crypt guest) -G GRP_TI
# Att directories permissions
chown root:GRP_ADM /adm
chown root:GRP_MKT /mkt
chown root:GRP_TI /ti
# Set 770
chmod 770 /adm
chmod 770 /mkt
chmod 770 /ti
chmod 777 /public
