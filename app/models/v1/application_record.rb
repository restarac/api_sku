module V1
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
end