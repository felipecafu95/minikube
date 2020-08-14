# Minikube

## Dependências
Para que seja possível executar o projeto utilizando o minikube, é preciso baixá-lo, juntamente com o [kubectl]() e também é preciso ter um virtualizador ([Virtualbox](https://www.virtualbox.org/wiki/Downloads), [KVM](http://www.linux-kvm.org/), [VMware](https://www.vmware.com/products/fusion), etc) em sua instância/notebook.

* Instalação do _kubectl_: https://kubernetes.io/docs/tasks/tools/install-kubectl/
* Instalação do Minikube: https://kubernetes.io/docs/tasks/tools/install-minikube/


## Instalacao Virtualbox e Minikube

Para instalação do virtualbox e do minikube, execute o script `install-vb-minikube.sh`;


```bash
./install-vb-minikube.sh.sh
```

**Obs:** Antes de finalizar a instalação verifique o status do minikube com o comando `minikube status`;
```
$ minikube status
type: Control Plane
host: Running
kubelet: Running
apiserver: Running
kubeconfig: Configured
```

Para acessar sua aplicação via DNS, execute o comando abaixo para capturar o endereço ip do seu cluster e inclua a seguinte entrada no seu arquivo **/etc/hosts/**

```bash
$ minikube ip
192.168.100.1
```

Entrada no **/etc/hosts**
```bash
192.168.100.1 app.local.env
```

## Deployment

Para subir sua aplicação edite o arquivo `deployment.yaml` com o nome de sua aplicação, porta, variaveis de ambiente, limites de CPU e RAM;

```
$ kubectl apply -f deployment.yaml
namespace/local created
deployment.apps/frontend created
service/frontend-svc created
ingress.networking.k8s.io/ingress created   
```
** Incluir variaveis de ambiente (https://kubernetes.io/docs/tasks/inject-data-application/define-environment-variable-container/)

## Adicional

Incluimos mais um script que contem alguns comandos que facilitam o manuseio da funções do cluster, como alterar de namespace e verificar em qual cluster o usuário está conectado;

Para isso execute o bash `kube-dev.sh`

```bash
source kube-dev.sh
```

## Contribuição

Fiquem a vontade para adicionar ou remover funções que achem necessária, os scripts foram criados para facilitar o desenvolvimento de aplicações para o K8S.
Toda ajuda é bem vinda.