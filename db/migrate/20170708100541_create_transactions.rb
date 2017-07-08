class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :book
      t.integer :owner_id
      t.integer :borrower_id
      t.string :status

      t.timestamps
    end
  end
end
