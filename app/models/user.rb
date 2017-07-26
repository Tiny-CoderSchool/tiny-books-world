class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :shelves
  has_many :users
  has_many :addresses

  has_many :borrowing_transaction, class_name: 'Transaction', foreign_key: 'owner_id'
  has_many :borrowers, :through => :borrowing_transaction, source: :borrower

  has_many :lending_transaction, class_name: 'Transaction', foreign_key: 'borrower_id'
  has_many :lenders, :through => :lending_transaction, source: :owner

  # Transaction For Lenders
  has_many :lend_pending,->{ where(status: 'pending') }, class_name: 'Transaction', foreign_key: 'owner_id'
  has_many :lended,->{ where(status: 'confirmed') }, class_name: 'Transaction', foreign_key: 'owner_id'
  has_many :lend_return_requesting,->{ where(status: 'requesting') }, class_name: 'Transaction', foreign_key: 'owner_id'
  has_many :available_for_lending,->{ where(status: 'available') }, class_name: 'Transaction', foreign_key: 'owner_id'

  # Transaction For Borrowers
  has_many :borrow_pending,->{ where(status: 'pending') }, class_name: 'Transaction', foreign_key: 'borrower_id'
  has_many :borrowed,->{ where(status: 'confirmed') }, class_name: 'Transaction', foreign_key: 'borrower_id'
  has_many :borrow_return_requesting,->{ where(status: 'requesting') }, class_name: 'Transaction', foreign_key: 'borrower_id'

  def shelves
    Shelf.where(user_id: id)
  end

end
