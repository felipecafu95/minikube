#!/bin/bash

# download do virtualbox
curl -L https://download.virtualbox.org/virtualbox/6.1.12/VirtualBox-6.1.12-139181-Linux_amd64.run -o vbox.run && \
chmod +x vbox.run

# instalacao do virtualbox
sudo ./vbox.run

# download do binario do minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube

# movendo para diretorio de execucao
sudo mv minikube /usr/local/bin

# iniciando o minikube
minikube start --driver=virtualbox

# habilitando o ingress
minikube addons enable ingress
