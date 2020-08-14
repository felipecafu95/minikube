#!/bin/bash

# variaveis uteis

# mudar de namespace
kubens() { kubectl config set-context --current --namespace="$1" }
# verificar em qual cluster esta acessando
kubecontxt() { kubectl config get-contexts | egrep -i "current|\*"}
