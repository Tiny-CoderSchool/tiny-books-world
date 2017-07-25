class BookShelf < ApplicationRecord
  belongs_to :book
  belongs_to :shelf
  scope :status, ->(status) { where(:active => status) }
  scope :active, -> { status(1) }
end
