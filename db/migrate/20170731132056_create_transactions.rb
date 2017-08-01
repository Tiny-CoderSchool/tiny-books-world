class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :book, foreign_key: true
      t.references :owner, references: :users
      t.references :borrower, references: :users
      t.datetime :from
      t.datetime :to
      t.string :status

      t.timestamps
    end
  end
end
