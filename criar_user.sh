#!/bin/bash

echo "Criando usuarios do sistema...."

useradd guest11 -c "usuario convidad" -s /bin/bash -m -p $(openssl passwd  senha123)
passwd  guest11 -e 

useradd guest12 -c "usuario convidad" -s /bin/bash -m -p $(openssl passwd  senha123)
passwd  guest12 -e

useradd guest13 -c "usuario convidad" -s /bin/bash -m -p $(openssl passwd  senha123)
passwd  guest13 -e

useradd guest14 -c "usuario convidad" -s /bin/bash -m -p $(openssl passwd  senha123)
passwd  guest14 -e

useradd guest15 -c "usuario convidad" -s /bin/bash -m -p $(openssl passwd  senha123)
passwd  guest15 -e

useradd guest16 -c "usuario convidad" -s /bin/bash -m -p $(openssl passwd  senha123)
passwd  guest16 -e

echo "finalizado!!"



