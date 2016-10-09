module V1
    class DimensaoSerializer < ActiveModel::Serializer
      attributes :largura, :altura, :comprimento, :peso
    end
end