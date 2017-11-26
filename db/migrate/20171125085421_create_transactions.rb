class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.string :title
      t.string :category
      t.string :transaction_type
      t.string :description
      t.string :address
      t.decimal :amount

      t.timestamps
    end
  end
end
