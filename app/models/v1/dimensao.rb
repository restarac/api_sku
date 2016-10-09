module V1
    class Dimensao < ApplicationRecord
        belongs_to :sku, inverse_of: :dimensao
    end
end