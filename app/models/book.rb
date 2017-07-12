class Book < ApplicationRecord
  belongs_to :user

  def self.search(search)
    s = "%#{search.downcase}%"
    Book.where('lower(name) like ?', s)
  end

end
