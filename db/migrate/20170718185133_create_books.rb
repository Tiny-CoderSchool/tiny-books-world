class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :publisher
      t.string :published_date
      t.string :book_type
      t.string :editor
      t.string :isbn
      t.integer :page

      t.timestamps
    end
  end
end
