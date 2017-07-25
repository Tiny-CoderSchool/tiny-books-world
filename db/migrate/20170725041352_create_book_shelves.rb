class CreateBookShelves < ActiveRecord::Migration[5.1]
  def change
    create_table :book_shelves do |t|
      t.belongs_to :book, foreign_key: true
      t.belongs_to :shelf, foreign_key: true

      t.timestamps
    end
  end
end
