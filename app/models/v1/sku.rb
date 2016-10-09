module V1
    class Sku < ApplicationRecord
      belongs_to :produto, inverse_of: :skus, foreign_key: "produtos_id"
      
      has_many :imagems, inverse_of: :sku
      has_one :dimensao, inverse_of: :sku
      has_one :disponibilidade, inverse_of: :sku
    end
end