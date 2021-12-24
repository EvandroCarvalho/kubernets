# Conhecendo o Kubernets

### 1 - Qual das afirmativas abaixo é verdadeira?

O Kubernetes não é capaz de escalar aplicações automaticamente.

O Kubernetes é capaz de reiniciar aplicações automaticamente em caso de falhas.

Podemos executar o kubernetes apenas localmente.

### 2 - Como a comunicação é feita com a API?

Acessando cada máquina individualmente via ssh.

Através do kernel do sistema, invocamos comandos diretamente para a API.

Utilizando uma ferramenta chamada kubectl.

Utilizando uma ferramenta chamada kube-caller.


# Criando o Cluster

### 1 - Como podemos criar um cluster do Kubernetes no Windows?

Para utilizar o Kubernetes no Windows, a única possibilidade é utilizando serviços de cloud.

Utilizando o próprio Docker Desktop, conseguimos inicializar um cluster.

O Windows já vem nativamente com o Kubernetes instalado.

É necessário baixar o arquivo de instalação do Kubernetes e instalar normalmente.


### 2 - Como podemos criar um cluster do Kubernetes no Linux?

Precisamos instalar o kube-init e o kubectl manualmente.

Precisamos instalar o minikube e o kubectl manualmente.

Basta baixar o instalador do Kubernetes e executar.

Assim como no Windows, basta instalar o Docker Desktop.

# Criado e entendendo pods

### 1- Quais das afirmativas abaixo são verdadeiras sobre pods? (2 afirmações)

Containers dentro de um mesmo pod conseguem utilizar a mesma porta.

Como possuem IP's diferentes, containers em pods diferentes podem utilizar o mesmo número de porta.

Containers em diferentes pods conseguem se comunicar via localhost.

Containers dentro de um mesmo pod conseguem se comunicar via localhost.


### 2 - Quais comandos criam, descrever e editam pods, respectivamente?

kubectl run, kubectl describe, kubectl edit

kubectl run, kubectl show, kubectl edit

kubectl make, kubectl show, kubectl edit

kubectl execute, kubectl show, kubectl edit


### 3 - O que pode ser afirmado sobre o arquivo YAML abaixo?
```
apiVersion: v1
kind: Pod
spec:
  containers:
    - name: container-pod-1
      image: nginx:latestCOPIAR CÓDIGO
```

Não funcionará, no lugar de kind devia estar escrito type.

Não funcionará, faltou definir o metadata e o name.

Não funcionará, spec e containers estão alinhados de maneira errada.

Funcionará sem problemas.


### 4 - Quando um pod é dado como encerrado?

Quando pelo menos um de seus containers parou de funcionar.

Quando a maioria dos containers parou de funcionar.

Quando todos os containers dentro do pod param de funcionar.

# Expondo pods com serviços


### 1 - Quais das alternativas abaixo mostram vantagens do uso de services? (2 alternativas)

Services não possuem um DNS estável.

Fazem o balanceamento de carga.

Não podem ser criados de maneira declarativa.

Proveem IP's fixos para comunicação.

### 2 - Como um service sabe quais pods deve gerenciar?

Através de labels definidas no metadata e utilizando o campo selector no service.

Devemos declarar os dois no mesmo arquivo.

Precisamos definir isso manualmente através do kubectl.

Através das informações no campo name dentro de metadata.


### 3 - O que pode ser afirmado sobre a saída abaixo? (2 alternativas)

```
NAME          TYPE        CLUSTER-IP      PORT(S)               
svc-1       NodePort     10.101.214.22   80:30000/TCP
```

Dentro do cluster o service escuta na porta 80, enquanto fora do cluster escuta na porta 30000.

Esse service pode ser acessado de fora do cluster utilizando o IP 10.101.214.22.

Utilizamos o IP do nó para acessar o service através da porta 30000.

Dentro do cluster o service escuta na porta 30000, enquanto fora do cluster escuta na porta 80.


### 4 - Quais afirmativas são verdadeiras sobre Load Balancers? (2 afirmativas)

Utilizam automaticamente os balanceadores de carga de cloud providers.

Por serem um Load Balancer, também são um NodePort e ClusterIP ao mesmo tempo.

O Load Balancer não permite acesso a partir de fora do cluster.

Necessitam de intervenção manual para se integrarem aos balanceadores de carga de cloud providers.


### 5 - O que podemos dizer sobre o arquivo YML abaixo?
```
apiVersion: v1
kind: Service
metadata:
  name: svc-portal-noticias
spec:
  type: NodePort
  ports:
    - port: 80
  #Trecho omitido...
```

Ele não funcionará, pois não definimos o campo targerPort dentro de ports:.

Se definirmos apenas o campo port, o valor de targetPort será o mesmo.

Ele não funcionará, precisamos definir labels dentro do metadata do service.

Ele funcionará sem problema algum.

O campo nodePort e targetPort serão definidos implicitamente.

Ele não funcionará, pois não definimos o campo nodePort dentro de ports:.


## 6 - Queremos acessar um pod de maneira estável tanto de maneira interna quanto externa ao cluster. O cluster está rodando no Google Cloud Platform e queremos usar o balanceador de carga da plataforma. Qual o tipo de service mais recomendado para acessar o pod?

LoadBalancer

ClusterIP

NodePort











