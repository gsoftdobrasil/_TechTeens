1 - npm install



2 - Criar a comunicação http/https da api
3 - Criar as rotas (get) post, delete, put (CRUD)
4 - Criar a conexão com o banco de dados Knex (knexfile.ts)
5 - Criar a model pra executar o comando pra ler o banco de dados
-- Criação da rota
6 - Criar um objeto que vai receber os dados da model
7 - Retornar os dados em formato json para o cliente
8 - Conectar o arquivo de rotas no index.ts
******************************************************************************

Passos da aula 11

Mostrar na API da viacep.com.br o tipo de resultado da api (json/xml) 

9 - Criar uma versão para a nossa api no index
10- Corrigir a msg de alerta useNullAsDefault e remover o parâmetro collation
11- Alterar a função getEndereco para getEnderecos em todos os arquivos
12- Implementar o conceito de try catch no método getEnderecos
13- Implementar a função getCEP na Model e exportar para ficar visível para outros arquivos
14- Implementar a rota /cep/12010590 para buscar o endereço específico do CEP

Exercício de casa

1 - Crie uma pasta nova e cola o banco de dados na pasta BD
2 - Copie o arquivo package.json para a pasta
3 - npm install
4 - Crie o arquivo index.ts
5 - Crie...


******************************************************************************
Passos da aula 12




1 - Publicar nossa API num servidor real 

localhost:5000/12050030
apiceptt.gsoft.com.br/12052080

2 - Criar um frontend pra consumir essa api

3 - Criar as rotas de inclusão, alteração e deleção de endereços

router.post
router.delete
router.put