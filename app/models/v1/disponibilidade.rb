module V1
    class Disponibilidade < ApplicationRecord
        belongs_to :sku, inverse_of: :disponibilidade
    end
end