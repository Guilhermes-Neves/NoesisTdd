require_relative '../app/carrinho'

describe CarrinhoDeCompras do
  describe 'Compra' do
    context 'quando o valor da compra está entre 100 e 200 reais' do
      before(:all) do
        @carrinho = CarrinhoDeCompras.new
        @carrinho.adicionarFilmeCarrinho([1, 5], 45.00 + 100.00)
      end

      it 'então meu carrinho deve conter os filmes' do
        expect(@carrinho.filmes).to eql [1, 5]
      end

      it 'e meu desconto deve ser de 10%' do
        expect(@carrinho.desconto).to eql 10.0
      end
    end

    context 'quando o valor da compra está entre 200 e 300 reais' do
      before(:all) do
        @carrinho = CarrinhoDeCompras.new
        @carrinho.adicionarFilmeCarrinho([1, 6], 45.00 + 200.00)
      end

      it 'então meu carrinho deve conter os filmes' do
        expect(@carrinho.filmes).to eql [1, 6]
      end

      it 'e meu desconto deve ser de 20%' do
        expect(@carrinho.desconto).to eql 20.0
      end

    end

    context 'quando o valor da compra está entre 300 e 400 reais' do
      before(:all) do
        @carrinho = CarrinhoDeCompras.new
        @carrinho.adicionarFilmeCarrinho([1, 5, 6], 45.00 + 100.00 + 200.00)
      end

      it 'então meu carrinho deve conter os filmes' do
        expect(@carrinho.filmes).to eql [1, 5, 6]
      end

      it 'e meu desconto deve ser de 25%' do
        expect(@carrinho.desconto).to eql 25.0
      end

    end

    context 'quando o valor da compra está acima de 400 reais' do
      before(:all) do
        @carrinho = CarrinhoDeCompras.new
        @carrinho.adicionarFilmeCarrinho([1, 2, 5, 6, 6], 45.00 + 55.00 + 100.00 + 200.00 + 200.00)
      end

      it 'então meu carrinho deve conter os filmes' do
        expect(@carrinho.filmes).to eql [1, 2, 5, 6, 6]
      end

      it 'e meu desconto deve ser de 35%' do
        expect(@carrinho.desconto).to eql 30.0
      end

    end

    context 'quando contém filme de ação' do
      before(:all) do
        @carrinho = CarrinhoDeCompras.new
        @carrinho.adicionarFilmeCarrinho([1, 2, 3, 4], 45.00 + 55.00 + 100.00 + 55.00)
      end

      it 'então meu carrinho deve conter os filmes' do
        expect(@carrinho.filmes).to eql [1, 2, 3, 4]
      end

      it 'e meu desconto deve ser de 25%' do
        expect(@carrinho.desconto).to eql 25.0
      end

    end
  end
end