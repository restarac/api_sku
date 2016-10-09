module V1
    class ProdutoSerializer < ActiveModel::Serializer
      attributes :largura, :altura, :comprimento, :peso
    end
end