module V1
    class Imagem < ApplicationRecord
        belongs_to :sku, inverse_of: :imagems
    end
end