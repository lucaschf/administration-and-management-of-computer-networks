# Gerenciamento de usuarios



## principais arquivos de configuração

### Lista de usuarios do sistema

````bash
/etc/passwd 
````

exemplo de conteúdo:

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/user-management/passwd-content-example.png)

**Descricao**

A informação é delimitada pelo caracter ':' sendo, da esquerda para direita:

1. Nome de usuário;
2. Senha (senhas shadow - indica se há uma senha armazenada para esse usuário);
3. UID (Id do usuário) podendo ser de (0 - 65535);
4. GID (Id do grupo primário);
5. Comentários - informações extras acerca do usuario, tais como nome completo, telefone etc. Também e conhecido como campo GECOS;
6. Diretório home padrão;
7. Shell padrão.



````bash
/etc/group
````

````bash
/etc/shadow
````

````bash
/etc/gshadow
````



