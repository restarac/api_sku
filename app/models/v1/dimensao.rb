module V1
    class Dimensao < ApplicationRecord
        belongs_to :sku, inverse_of: :dimensao, foreign_key: "skus_id"
    end
end