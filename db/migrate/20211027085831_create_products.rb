class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :sale_price
      t.integer :stock
      t.string :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
