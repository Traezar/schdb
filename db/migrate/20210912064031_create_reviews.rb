class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.timestamps
    end

    add_reference(:product,:reviews, foreign_key: true)
  end
end
