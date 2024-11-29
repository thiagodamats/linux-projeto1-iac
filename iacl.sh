#!/bin/bash



echo "Criando Diretorios...."



mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando grupos de usuários...."



groupadd  GRP_ADM
groupadd  GRP_VEN
groupadd  GRP_SEC	



echo "Criando usuários..."

#Lembrando que não uso o -crypt pois na versão que utilizo do Ubuntu (24.04.1 LTS) ele não é mais utilizado.

useradd carlos -m -c "Carlos Oliveira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -m -c "Maria Joana" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -m -c "João Bento" -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd sebastiana -m -c "Sebastiana de Jesus" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd debora -m -c "Debora Silveira" -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -m -c "Roberto Firmino" -s - /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd amanda -m -c "Amanda Nunes" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio Becker" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd josefina -m -c "Josefina Monteiro" -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC



echo "Especificando permissoes dos diretórios..."


chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "FIM!"


