class Produto < ApplicationRecord
	has_many :sku, inverse_of: :produto
end
