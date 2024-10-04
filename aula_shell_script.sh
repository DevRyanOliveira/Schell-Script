#!/bin/bash

Sudo apt update && apt upgrade -y

docker -version #verifica versao atual do docker
if [ $? = 0 ]; #se retorno for igual a 0
    then #entao,
    echo “docker instalado” #print no terminal
    else #se nao,
    echo “docker não instalado” #print no terminal
    echo “gostaria de instalar o docker? [s/n]” #print no terminal
    read get #variável que guarda resposta do usuário
    if [ \“$get\” == \“s\” ]; #se retorno for igual a s
        then #entao
        sudo apt install docker.io -y #executa instalacao do docker
    fi #fecha o 2º if
fi #fecha o 1º if

echo "inicializando o docker..."

sudo systemctl start docker
sudo systemctl enable docker

sudo docker build -t servidor-web .
sudo docker run -d --name atividade_sh -p 8080:8080 servidor-web

sudo docker exec -it atividade_sh bash

apt-get update && apt-get install nano

echo "iniciando a aplicação"

npm start