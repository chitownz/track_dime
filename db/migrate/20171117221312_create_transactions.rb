class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.string  :transaction_type
      t.text    :description 
      t.string  :address
      t.float   :amount 
      t.belongs_to :category

      t.timestamps
    end
  end
end
