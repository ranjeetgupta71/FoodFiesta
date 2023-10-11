class Restaurant < ApplicationRecord
  has_many :foods, dependent: :destroy
end
