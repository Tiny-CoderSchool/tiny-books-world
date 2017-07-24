class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.references :book, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
