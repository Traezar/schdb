class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.timestamps
    end
    add_reference(:order_items,:products,foreign_key: true)
    add_reference(:order_items,:orders,foreign_key: true)
  end
end
