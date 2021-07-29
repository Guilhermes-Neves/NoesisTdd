Estória: Carrinho de compras
  Como lojista
  Quero saber quanto de desconto posso conceder no carrinho
  Para fidelizar um cliente

Cenário: Compra acima de R$ 100 e abaixo de R$ 200
  Dado que sou um cliente
  Quando adiciono filmes no meu carrinho com o valor entre 100 e 200 reais
  Então o meu desconto deve ser de 10%
  
Cenário: Compra acima de R$ 200 e abaixo de R$ 300
  Dado que sou um cliente
  Quando adiciono filmes no meu carrinho com o valor entre 200 e 300 reais
  Então o meu desconto deve ser de 20%

Cenário: Compra acima de R$ 300 e abaixo de R$ 400
  Dado que sou um cliente
  Quando adiciono filmes no meu carrinho com o valor entre 300 e 400 reais
  Então o meu desconto deve ser de 25%

Cenário: Compra acima de R$ 400 
  Dado que sou um cliente
  Quando adiciono filmes no meu carrinho com o valor acima de 400 reais
  Então o meu desconto deve ser de 30%


Cenário: Carrinho contendo filme com gênero ação
  Dado que sou um cliente
  Quando adiciono filmes no meu carrinho que contenha o gênero ação
  Então o meu desconto de acordo ao valor da compra com mais 5%