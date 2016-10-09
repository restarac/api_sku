module V1
    class SkuSerializer < ActiveModel::Serializer
        attributes :id, :nome, :nomeReduzido, :foraDeLinha, :url, :modelo

        has_many :imagems, serializer: ImagemSerializer
        has_one :dimensao, serializer: DimensaoSerializer
    end
end