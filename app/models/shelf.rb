class Shelf < ApplicationRecord
  belongs_to :user
  has_many :book_shelves, -> { active }
  has_many :books, :through => :book_shelves
end
