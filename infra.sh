#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd carlos -c "Carlos Augusto" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd maria -c "Maria Eduarda" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd joao -c "Joao Vitor" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM

useradd debora  -c "Debora Silva" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana dos Anjos" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd roberto -c "Roberto Carlos" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN

useradd josefina -c "Josefina Freitas" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd amanda -c "Amanda Borges" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Leite" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC

echo "Especificando permissoes dos  diretorio..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim..."
