# Api Skus (Em construção)

Servico que disponibiliza uma API Restful para:

 - Produto
 - Skus 
 - Disponibilidades (estoque)

# Como executar localmente

- instalar usando o railsinstaller (É instalado a versão 4.X.X do rails)
- Rodar o comando `gem install rails`, assim será atualizado para a ultima versão.
- baixar o projeto do git.
- Atualizar as gems existentes, bastando executar o comando `bundle` dentro do projeto
- Executar as migrações para criação do banco local `rails migrate --RAILS_ENV=development`
- Iniciar o rails, `rails s` (para mais comandos `rails -h`)
- Acessar o caminho `GET localhost:3000/v1/produtos`