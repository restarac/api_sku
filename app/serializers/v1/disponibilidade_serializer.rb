module V1
    class DisponibilidadeSerializer < ActiveModel::Serializer
      attributes :id, :preco, :precoDe, :disponivel, 
    end
end