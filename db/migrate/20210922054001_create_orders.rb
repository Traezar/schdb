class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.timestamps
    end
    add_reference(:orders,:users, foreign_key: true)
  end
end
