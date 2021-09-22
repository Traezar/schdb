# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_22_054323) do

  create_table "order_items", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "products_id"
    t.bigint "orders_id"
    t.index ["orders_id"], name: "index_order_items_on_orders_id"
    t.index ["products_id"], name: "index_order_items_on_products_id"
  end

  create_table "orders", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_orders_on_users_id"
  end

  create_table "products", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "summary"
    t.decimal "price", precision: 10, scale: 2
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "reviews_id"
    t.bigint "users_id"
    t.index ["reviews_id"], name: "index_products_on_reviews_id"
    t.index ["users_id"], name: "index_products_on_users_id"
  end

  create_table "reviews", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.decimal "rating", precision: 10, scale: 2
    t.decimal "price", precision: 10, scale: 2
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "order_items", "orders", column: "orders_id"
  add_foreign_key "order_items", "products", column: "products_id"
  add_foreign_key "orders", "users", column: "users_id"
  add_foreign_key "products", "reviews", column: "reviews_id"
  add_foreign_key "products", "users", column: "users_id"
end
