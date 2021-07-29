class CarrinhoDeCompras
  attr_accessor :filmes, :desconto

  def initialize
    self.filmes = []
    self.desconto = 0
  end

  def adicionarFilmeCarrinho(idFilme, valorCompra)
    self.filmes = idFilme
    retornarDesconto(valorCompra)
  end

  def retornarDesconto(valorCompra)
      if valorCompra > 100 && valorCompra <= 200
        if self.filmes.include?(3) || self.filmes.include?(4)
          return self.desconto = 15.0
        else 
          return self.desconto = 10.0
        end

      elsif valorCompra > 200 && valorCompra <= 300
        if self.filmes.include?(3) || self.filmes.include?(4)
          return self.desconto = 25.0
        else 
          return self.desconto = 20.0
        end

      elsif valorCompra > 300 && valorCompra <= 400
        if self.filmes.include?(3) || self.filmes.include?(4)
          return self.desconto = 30.0
        else 
          return self.desconto = 25.0
        end
      
      elsif valorCompra > 400
        if self.filmes.include?(3) || self.filmes.include?(4)
          return self.desconto = 35.0
        else 
          return self.desconto = 30.0
        end
        
      else
        puts('Valor informado não tem desconto aplicado')
      end
  end
end