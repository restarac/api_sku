module V1
    class ImagemSerializer < ActiveModel::Serializer
      attributes :menor, :maior, :zoom
    end
end