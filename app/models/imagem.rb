class Imagem < ApplicationRecord
    belongs_to :sku, inverse_of: :imagem
end
