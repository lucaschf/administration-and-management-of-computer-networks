# Gerenciamento de usuários - Comandos

## useradd

cria uma conta de usuário no sistema

````bash
useradd [OPCOES] conta
````

algumas opções do comando:

-c  #comentário - define o campo comentário (nome usuário, telefone etc)

-d #dir_home - define o diretório home do usuário  

-m #cria e preenche o diretório home

-s #shell  usa o shell como padrão da conta

-e #data_expiração da conta

-u #UID desejada para o usuário

**Exemplo**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/useradd-example.png)

## adduser

Script em Perl que utiliza o programa useradd para realizar tarefas de criação de usuários no debian e derivados; no Red Hat e derivados é apenas um link simbólico para o useradd. Pode ser também usado para adicionar um usuário a um grupo existente.

adicionar usuário:

`````bash
adduser usuario
`````

adicionar um usuário a um grupo existente:

````bash
adduser usuario grupo
````

**Exemplo**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/adduser-example.png)