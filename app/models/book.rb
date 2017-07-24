class Book < ApplicationRecord
  has_many :quotes
  has_and_belongs_to_many :authors
end
