# Gerenciamento de usuários - Arquivos de configuração



## Passwd

### Lista de usuários do sistema

````bash
/etc/passwd 
````

**exemplo de conteúdo:**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/passwd-content-example.png)

**Descrição**

A informação é separada pelo caracter ':' sendo, da esquerda para direita:

1. Nome de usuário;
2. Senha (senhas shadow - indica se há uma senha armazenada para esse usuário);
3. UID (Id do usuário) podendo ser de (0 - 65535);
4. GID (Id do grupo primário);
5. Comentários - informações extras acerca do usuario, tais como nome completo, telefone etc. Também e conhecido como campo GECOS;
6. Diretório home padrão;
7. Shell padrão.

## Shadow

Possui as senhas criptografadas dos usuários e outras informações sobre as contas

`````bash
/etc/shadow
`````

**Exemplo de conteúdo:**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/shadow-content-example.png)

**Descrição**

A informação é separada pelo caracter ':' sendo, da esquerda para direita:

1. Nome da conta;
2. Senha (! = não possui senha; * = conta desativada; ![senha] = conta travada; !! = senha nunca configurada);
3. Última módificação - dias desde 01/01/1970 desde que a senha foi modificada pela última vez;
4. Mínimo - dias antes que o usuário possa modificar sua senha;
5. Máximo - dias que o usário pode manter sua senha;
6. Aviso - dias antes da expiração da senha quando o usuário começa a receber avisos;
7. Inativo - dias após a validade da senha em que a conta é desabilitada automaticamente;
8. Expiração - quando a conta será desativada;
9. Reservado;

## Group

Define os grupos aos quais os usuários pertencem

````bash
/etc/group
````

Grupos são usados para aplicar permissões de acesso a recursos do sistema bem como para o gerenciamento e monitoramento de usuários.

**Exemplo de conteúdo:**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/group-content-example.png)

A informação é separada pelo caracter ':' sendo, da esquerda para direita:

1. Nome do grupo;
2. senha do grupo (Geralmente nao se usa);
3. GID (Id do grupo);
4. Lista de membros, separados por vírgulas.

**PS. Pode -se adicionar o usuário a um grupo com o seguinte comando:**

````bash
usermod -a -G grupo usuario
````

## Gshadow

Possui as senhas criptografadas dos grupos

````bash
/etc/gshadow
````

**Exemplo de conteúdo:**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/gshadow-content-example.png)

**Descrição**

A informação é separada pelo caracter ':' sendo, da esquerda para direita:

1. Nome do grupo;
2. Senha criptografada; O caracter '!' indica que usuários que não são membros do grupo não podem acessa-lo.
3. Administradores do grupo;
4. Membros do grupo.

### Comandos

**groups** - lista os grupos dos quais um usuário é membro

````bash
groups usuario
````

**Exemplo:**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/groups-example.png)

**id** - exibe os Ids de grupos e usuário e os grupos aos quais ele pertence

````bash
id opcao usuario
````

opções para o comando id:

-g GID do grupo primário do usuário;

-G todos os GIDs dos grupos do usuário;

-n exibe os nomes dos grupos ao invés dos GIDs

**Exemplos:**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/id-example.png)

