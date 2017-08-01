class Transaction < ApplicationRecord
  belongs_to :book
  belongs_to :owner, :class_name => 'User'
  belongs_to :borrower, :class_name => 'User'
end
