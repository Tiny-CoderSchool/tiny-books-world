class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.string :country
      t.string :city
      t.string :district
      t.string :ward
      t.string :street
      t.string :phone

      t.timestamps
    end
  end
end
