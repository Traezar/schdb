class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.text :summary
      t.decimal :price, precision: 10,scale: 2
      t.integer :quantity
      t.timestamps
    end
  end
end
