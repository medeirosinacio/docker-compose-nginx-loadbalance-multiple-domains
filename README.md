# Estrutura Básica do Projeto PHP
###### Basic PHP Project Structure

Este repositorio foi baseado no [pds/skeleton](https://github.com/php-pds/skeleton), onde descreve com base em estudos,
uma estrutura padrão para projetos e pacotes PHP.

Foi feito alterações a fim de tornar mais rapido subir, testar e estudar novas funcionalidades PHP, por conta disso a 
estrutura foi modificada, os detalhes das modificações você encontra nesse documento, para mais detalhes consulte 
a [documentação original](https://github.com/php-pds/skeleton) antes de começar a usar.

## Resumo

| Se o projeto tiver uma pasta na raiz para...    | ...então a pasta será nomeada: |
| ----------------------------------------------- | --------------------------- |
| executáveis da linha de comando                 | `bin/`                      |
| arquivos dockerfiles para subir a aplicação     | `docker/`                   |
| arquivos de configuração                        | `config/`                   |
| arquivos de documentação                        | `docs/`                     |
| arquivos do servidor web                        | `public/`                   |
| outros arquivos de recursos                     | `resources/`                |
| Código fonte PHP                                | `src/`                      |
| código de teste                                 | `tests/`                    |
| pacotes adicionais                              | `vendor/`                   |


| Se o projeto tiver um arquivo na raiz para...   | ....então o arquivo será nomeado: |
| ----------------------------------------------- | --------------------------------- |
| um log de mudanças entre versões                | `CHANGELOG(.*)`                   |
| diretrizes para colaboradores                   | `CONTRIBUTING(.*)`                |
| informações de licenciamento                    | `LICENSE(.*)`                     |
| informações sobre o próprio pacote ou projeto   | `README(.*)`                      |
| pacotes requisitos do projeto                   | `composer.json`                   |

## Alterações do projeto original

#### Diretorio "docker"
O projeto original foi realizado a fim de padronizar o desenvolvimento de novos pacotes PHP 
pela comunidade, a pasta **docker** foi criada para guardar arquivos relacionados ao Docker e Docker Compose, assim 
conseguimos subir o ambiente completo para testes, estudos ou novos projetos e temos um bom 
ponto de partida.

Dentro do diretorio ja se encontra o ambiente localhost completo e configurado com Nginx, PHP-FPM e PHP7.4.

#### Diretorio "vendor" e arquivo "composer.json"
Foi adiciona o **composer.json** no projeto já com as configurações do mesmo, assim, agilizando o 
desenvolvimento com pacotes externos. O diretorio **vendor** é criado automaticamente 
ao rodar o comando `composer install` ou `composer update`

#### Arquivos em "public/"
Foi adicionado arquivos para a construção do projeto já ter uma base de testes. 
**public/index.php** carrega o autoload do composer e já é carregado pelo servidor web 
ao iniciar os serviços com `docker-compose up`. **public/phpinfo.php** para conferir todas 
as configurações e modulos habilitados na imagem.

## Como usar

Existem duas maneiras para usar este templete de projeto PHP.

A primeira é clonando este repositorio e colocar no root do seu servidor web/php, aponte 
a pasta publica para **public** e rode o composer para atualizar os pacotes.

A segunda é após clonar o repositorio para um servidor com docker e docker compose 
instalado, entre na pasta docker e rode o build.sh para iniciar os serviços.

Todos os arquivos estão ao maximo simplificado e comentados, você tem total liberdade para
alterar conforme sua necessidade.