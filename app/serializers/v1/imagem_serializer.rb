module V1
    class ProdutoSerializer < ActiveModel::Serializer
      attributes :menor, :maior, :zoom
    end
end