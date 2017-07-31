class Book < ApplicationRecord
  has_many :quotes
  has_and_belongs_to_many :authors
  has_many :book_shelves, -> { active }
  has_many :shelves, :through => :book_shelves
  has_many :users, :through => :shelves, source: :user





end
