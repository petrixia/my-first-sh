#!/bin/bash

echo "criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios..."

useradd osun -m -s /bin/bash -p $(openssl passwd -crypt MeTroca123) -G GRP_ADM
useradd oya -m -s /bin/bash -p $(openssl passwd -crypt MeTroca123) -G GRP_ADM
useradd oba -m -s /bin/bash -p $(openssl passwd -crypt MeTroca123) -G GRP_ADM

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt MeTroca123) -G GRP_VEN
useradd jose -m -s /bin/bash -p $(openssl passwd -crypt MeTroca123) -G GRP_VEN
useradd samael -m -s /bin/bash -p $(openssl passwd -crypt MeTroca123) -G GRP_VEN

useradd kali -m -s /bin/bash -p $(openssl passwd -crypt MeTroca123) -G GRP_SEC
useradd shiva -m -s /bin/bash -p $(openssl passwd -crypt MeTroca123) -G GRP_SEC
useradd krishna -m -s /bin/bash -p $(openssl passwd -crypt MeTroca123) -G GRP_SEC

echo "especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim!"