## Rails Template

Inicialização de projetos da Nullbug, a partir de Rails Templates, com um simples comando pelo terminal.
    
>_Esse repositório deve ser mantido como público para ser acessível a partir do comando `rails new`_

### Como usar
---
_*Para conseguir utilizar esse template, **é necessário** ter uma [chave SSH configurada](https://docs.github.com/pt/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) na sua máquina, que possua acesso aos repositórios da NullBug._

A execução desse template apenas irá iniciar o processo de clonar o repositório privado (onde está localizado o template completo) nos arquivos temporários da sua máquina, irá disparar a execução do template, e ao finalizar, irá remover o repositório clonado.

#### Rails API

Para iniciar um novo projeto Rails, basta executar o comando abaixo (_Substitua 'my_app' pelo nome do projeto_):
```sh
rails new my_app --api -d postgresql -m https://raw.githubusercontent.com/Null-Bug-Company/rails-template/main/template.rb
```