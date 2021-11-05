# Umask

permissão padrão ou base. Aplicada quando um novo arquivo ou diretório é criado. Geralmente o Umask é 022 (0022).

para visualizar o umask padrão use o comando:

````bash
umask
````

para visualizar o umask no modo simbólico:

````bash
umask -S
````

**Exemplo**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/umask/umask-example.png)

## Cálculo de Umask

Os valores padrão de umask para arquivos e diretórios sã 666 e 777 respectivamente. O valor 666 indica que arquivos comuns não devem ter permissão de execução.

O cálculo de umask se dá através da fórmula (em binário):

````
!(umask) AND Permissão padrão
````

**Exemplo**

Suponha Umask 022 para um arquivo.

````
022 = 000010010
NOT (000010010) = 111101101

Permissao padrao de arquivos: 666
666 = 110110110

AND lógico:
111101101 
110110110
---------
110100100 = 644

umask determina a permissao 644 para arquivos.
````

Suponha Umask 022 para um diretório.

````
022 = 000010010
NOT (000010010) = 111101101

Permissao padrao de diretórios: 777
777 = 111111111

AND lógico:
111101101 
111111111
---------
111101101 = 755

umask determina a permissao 755 para diretórios.
````

## Alterar umask

Pode ser realizado de duas formas;

valor numérico

````bash
umask valor_numérico
````

**Exemplo**

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/umask/umask-alterar-numerico-example.png)

valor simbólico

`````bash
umask valor_simbólico
`````

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/blob/main/images/umask/umask-alterar-simbolico-example.png)

## Alterar umask padrao para novos usuários

para alterar o umask padrão do sistema para todos os novos usuários, altere o arquivo: 

````bash
 /etc/profile 
````

e configure a seguinte linha:

````
umask valor_desejado
````

**Exemplo**

`````bash
umask 027
`````

Outra maneira é alterar no arquivo 

````bash
/etc/login.defs
````

## Alterar umask para usuários existentes

Para alterar o umask padrão do sistema para usuários existentes, altere o arquivo ~/.bashrc em seus diretórios home e configure a seguinte linha: 

````
umask valor_desejado
````

## Exemplos  e níveis de segurança

| Umask | Nível de segurança | Permissão |
| :---: | :----------------: | :-------: |
|  022  |       Baixo        |    755    |
|  026  |       Médio        |    751    |
|  027  |       Médio        |    750    |
|  077  |        Alto        |    700    |

