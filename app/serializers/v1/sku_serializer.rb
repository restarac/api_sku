module V1
    class SkuSerializer < ActiveModel::Serializer
        attributes :id, :nome, :nomeReduzido, :foraDeLinha, :url, :modelo, 

        has_many :imagems
        has_one :dimensao
    end
end