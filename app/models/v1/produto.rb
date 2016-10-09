module V1
    class Produto < ApplicationRecord
    	has_many :skus, inverse_of: :produto
    end
end