class Food < ApplicationRecord
  belongs_to :restaurant
  has_many :comments, dependent: :destroy
end
