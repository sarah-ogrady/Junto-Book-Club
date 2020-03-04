class Book < ApplicationRecord
  has_many :swaps
  has_many :owners
  has_many :users, through: :owners
  has_one_attached :photo
end
