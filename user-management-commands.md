# Gerenciamento de usuários - Comandos

***Os comandos abaixo devem ser executados como root***

## useradd

cria uma conta de usuário no sistema

````bash
useradd [OPCOES] conta
````

algumas opções do comando:

-c 	#comentário - define o campo comentário (nome usuário, telefone etc)

-d	#dir_home - define o diretório home do usuário  

-m	#cria e preenche o diretório home

-s	#shell  usa o shell como padrão da conta

-e	#data_expiração da conta

-u	#UID desejada para o usuário

**Exemplo**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/useradd-example.png)

## adduser

Script em Perl que utiliza o programa useradd para realizar tarefas de criação de usuários no debian e derivados; no Red Hat e derivados é apenas um link simbólico para o useradd. Pode ser também usado para adicionar um usuário a um grupo existente.

adicionar usuário:

`````bash
adduser username
`````

adicionar um usuário a um grupo existente:

````bash
adduser username grupo
````

**Exemplo**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/adduser-example.png)

## usermod

modifica uma conta de usuário existente

````bash
usermod [opcoes] usuario
````

Algumas opções do comando:

-u UID	#altera o UID para o valor especificado

-s shell	#define um novo shell para o usuário

-g grupo	#define um novo grupo primário para o usuário

-G grupo1, grupo2, ....	#torna o usuário membro dos grupos especificados

-c comentário	# define ou altera o valor do campo comentários

-l login	#altera o nome da conta do usuário para o login especificado

**Exemplos**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/usermod-example.png)

## chfn

Altera as informações dos usuários

````bash
chfn [opcoes] [usuário]
````

Algumas opções

-f nome_completo

-r número da sala

-w telefone comercial

-h telefone residencial

**Exemplo**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/chfn-example.png)

# Gerenciamento de senhas

## passwd

configura a senha de usuário, além de algumas opções de conta

````bash
passwd [opcoes] username
````

algumas opções do comando:

-l 	#trava a senha da conta especificada

-u	#destrava a senha da conta especificada

-d	#Exclui a senha 

-e	#força a expiração da senha

-x dias	#força a expiração da senha após a passagem dos dias especificada

-n dias	#quantidade de dias mínima que o usuário precisa aguardar para poder trocar sua senha

-w dias	#define a quantidade de dias a partir do qual o usuário começa a receber aviso de expiração de senha

-S	#exibe o status da conta

**Exemplos**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/passwd-example.png)

## gpasswd

usado para administar grupos no linux. Grava informações nos arquivos /etc/group e /etc/gshadow

`````bash
gpasswd [opcoes] grupo
`````

**algumas opções do comando**

criar ou alterar senha do grupo:

````
gpasswd grupo
````

adicionar usuário ao grupo:

````bash
gpasswd -a usuario grupo
````

remover usuário do grupo:

`````bash
gpasswd -d usuario grupo
`````

tornar usuário administrador do grupo

````bash
gpasswd -A usuario grupo
````

**Exemplos**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/gpasswd-example.png)