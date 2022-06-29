# Ferramentas

Para hospedar o sistema é necessário ter o servidor web apache 2.4.41, php 8.0 e o banco PostgreSQL versão 14.03, instalados na máquina, além disso é preciso ter-se uma 
ferramenta de manipulaçao do banco, por exemplo o HeidiSQL, MySQL Workbench ou pgAdmin. Para o desenvolvimento fora utilizado o HeidiSQL.

Tendo as ferramentas, será necessário rodar o script das tabelas SQL no banco, e em seguida inserir o admin com a senha de sua preferência.

Acione o apache enviando a aplicação para a pasta htdochtml (via Xampp np Windows) ou www (via terminal no Linux).

Acesse o código do sistema e no caminho .../model/bd mude o usuário, a senha e o banco no arquivo variáveis. Com as variáveis configuradas, basta rodar a aplicação no 
localhost.

## Instalando e configurando o Apache 2.4.41 no Linux

- Abra o terminal pressionando as teclas ```Ctrl``` + ```Alt``` + ```t```
- Digite o comando a seguir para fazer a instalação do apache2 e já mostrar a versão instalada;
```
sudo apt install apache2 && apache2 -v
```

- Entre na pasta "etc" e "apache2" para configurar os arquivos utilizados;
```
cd /etc
cd apache2
```

- Liste os arquivos e pastas;
```
ls
```

- Acesse o arquivo "apache2.config" e onde houver "Directory /var/www/" troque para o diretório(pasta) onde você está guardando seus arquivos, lembre-se de 
 colocar o caminho completo do diretório, por exemplo: "Directory /home/aluno/devweb/";
```
sudo nano apache2.conf
```

- Pressione as teclas ```Ctrl```+```o```, depois ```Enter```para salvar, e ```Ctrl```+```x``` para sair;
- Liste os arquivos e pastas;
```
ls
```

- Entre na pasta "sites-available" e liste os arquivos e pastas;
```
cd sites-available
ls
```

- Acesse o arquivo "000-default.conf" e onde houver "Directory /var/www/" troque para o diretório(pasta) onde você está guardando seus arquivos, lembre-se 
de colocar o caminho completo do diretório, por exemplo: "Directory /home/aluno/devweb/";
```
sudo nano 000-default.conf
```

- Start o apache;
```
sudo systemctl start apache2
```

- Acesse a pasta "html", liste os arquivos e pastas e remova o arquivo "index.html";
```
cd  /var/www/html/
ls
rm index.html
```

## Instalando e configurando o Apache 2.4.41 no Windows

- Faça o download do Apache HTTPD Web Server no site do Apache;
- Salve o arquivo em sua Área de Trabalho do Windows;
- Clique duas vezes no arquivo salvo;
- Clique em "Next >";
- Aceite os termos de licença;
- Clique novamente em "Next >";
- Na janela seguinte, clique novamente em "Next >";
- Agora, preencha os campos de texto com as seguintes informações:

    "Network Domain" (Domínio da Rede): localhost
    
    "Server Name" (Nome do Servidor): localhost
    
    "Administrator's Email Address" (Email do Administrador): seu endereço de email

- Selecione o botão "for all users, on port 80, as a service - recommended";
- Clique em "Next >";
- Depois de digitar o destino, clique em "OK" e em "Next>";
- Marque a opção "Apache HTTP Server";
- Clique no botão "change";
- Instale todos os pacotes e scripts no diretório C:\Server\Apache2\.
- Digite "C:\Server\APache2\" na caixa de texto "Folder name";
- Clique em "OK" e em seguida em "Next>";
- Clique em "Install";
- clique no botão "Finish".


## Instalando e configurando o PHP 8.0 no Linux

sudo apt-get update && sudo apt-get upgrade
sudo apt-get install php
