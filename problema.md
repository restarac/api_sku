# Desafio Técnico Epicom

Sua tarefa é criar uma aplicação que se comunique com a plataforma da Epicom e forneça uma API CRUD para manipulação de dados. A aplicação deverá atender aos seguintes requisitos:

1. Ser capaz de receber uma notificação de criação de SKU e atualizar uma base local com os dados do SKU;
2. Fornecer uma API REST quer permita criar, remover, atualizar e listar os SKUs cadastrados localmente.
3. Fornecer um endpoint nesta mesma API que retorne apenas os SKUs *disponíveis* que possuam preços entre *10.00* e *40.00*. A lista retornada deve estar ordenada ascendentemente pelo preço de cada SKU.  

## Implementação

- A solução poderá ser implementada em C#, Java, Ruby, Python, JavaScript (NodeJS) ou Go, e você pode utilizar as ferramentas/bibliotecas/bancos de dados que julgar mais adequados.
- O código deverá ser versionado no Git e estar acessível através de uma URL na Internet, preferencialmente no GitHub ou Bitbucket.
- Apenas a API de **marketplace** deverá ser utilizada.

## O que será avaliado

- Design da API.
- Organização, legibilidade e robustez do código.
- Forma de utilização do Git.
- Existência de algum teste automatizado.

## Entrega

O link para a sua solução deverá ser enviado para o email [desafio@epicom.com.br](mailto:desafio@epicom.com.br) até a data previamente combinada.

## Sobre a API da Epicom

A comunicação com a plataforma da Epicom pode ser *passiva* ou *ativa*. No modo passivo, sua aplicação irá receber uma notificação sobre a ocorrência de algum evento, que será enviada como uma requisição HTTP para um endpoint previamente configurado. Para este desafio, a notificação que deverá ser processada tem o seguinte formato:

    {
      "tipo": "criacao_sku",
      "dataEnvio": "2015-07-14T13:56:36",
      "parametros": {
        "idProduto": 100,
        "idSku": 200
      }
    }

E no modo ativo, será sua aplicação que fará uma requisição HTTP para a API da Epicom. Essa requisição deverá ser enviada para o endpoint [https://sandboxmhubapi.epicom.com.br/v1](https://sandboxmhubapi.epicom.com.br/v1), e deverá ser autenticada. Para isso, você deve usar as seguintes credenciais:

    Chave de acesso: 897F8D21A9F5A
    Token:           Ip15q6u7X15EP22GS36XoNLrX2Jz0vqq

A documentação completa da API está disponível em [https://developers.epicom.com.br/docs/mhubapi/v1](https://developers.epicom.com.br/docs/mhubapi/v1).

## Dados de teste

Para testar o recebimento de notificações, utilize [este arquivo JSON](https://s3-us-west-2.amazonaws.com/desafiotecnico/criacao_sku.json).
