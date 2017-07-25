class AddActiveToBookShelves < ActiveRecord::Migration[5.1]
  def change
    add_column :book_shelves, :active, :bit
  end
end
