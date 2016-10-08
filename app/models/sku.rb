class Sku < ApplicationRecord
  belongs_to :produto
  
  has_many :imagem
  has_one :dimensao
  has_one :disponibilidade
end
