## Alterar proprietário e grupo de arquivo ou diretório

````bash
chgrp (change group) 
chown (change owner)
````

#### Sintaxe:

````bash
chgrp [novo_grupo] [nome_arquivo|nome_diretorio]
chown [novo_proprietario] [nome_arquivo|nome_diretorio]
````

#### Exemplos:

Alterar proprietário do arquivo teste de lucas para joao:

Primeiro vamos verificar o atual proprietario do arquivo:

````bash
ls -l test.txt	
````

![](https://github.com/lucaschf/administration-and-management-of-computer-networks/images/ls-l-test.png)

Agora alteramos para joao:

````bash
sudo chown joao test.txt
````

Alterando o grupo do arquivo de lucas para files:

````bash
sudo chgrp files test.txt
````

