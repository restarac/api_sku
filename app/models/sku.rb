class Sku < ApplicationRecord
  belongs_to :produto, inverse_of: :sku
  
  has_many :imagems, inverse_of: :sku
  has_one :dimensao, inverse_of: :sku
  has_one :disponibilidade, inverse_of: :sku
end
