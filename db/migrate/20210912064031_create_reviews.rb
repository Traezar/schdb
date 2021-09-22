class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.decimal :rating, precision: 10, scale: 2
      t.decimal :price, precision: 10, scale: 2
      t.integer :quantity, null: false
      t.timestamps
    end

    add_reference(:products,:reviews, foreign_key: true)
    add_reference(:products,:users, foreign_key: true)
  end
end
