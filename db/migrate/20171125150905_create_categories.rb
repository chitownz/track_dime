class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :main
      t.string :sub
      t.string :description

      t.timestamps
    end
  end
end
