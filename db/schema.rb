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

ActiveRecord::Schema[7.0].define(version: 2022_09_29_075818) do
  create_table "admins", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_joining"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "gender"
    t.date "date_of_birth"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "cell"
    t.string "gender"
    t.integer "age"
    t.date "date_of_joining"
    t.string "address"
    t.integer "cnic"
    t.string "designation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Resturant_id", null: false
    t.index ["Resturant_id"], name: "index_employees_on_Resturant_id"
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id", null: false
    t.integer "order_id", null: false
    t.index ["category_id"], name: "index_food_items_on_category_id"
    t.index ["order_id"], name: "index_food_items_on_order_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "title"
    t.string "type"
    t.text "discription"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "resturant_id", null: false
    t.index ["resturant_id"], name: "index_menus_on_resturant_id"
  end

  create_table "offers", force: :cascade do |t|
    t.date "date_from"
    t.date "date_to"
    t.datetime "time_from", precision: nil
    t.datetime "time_to", precision: nil
    t.decimal "offer_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "option"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "food_item_id", null: false
    t.index ["food_item_id"], name: "index_options_on_food_item_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.datetime "placed_at", precision: nil
    t.datetime "received_at", precision: nil
    t.decimal "total"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "payments", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "method"
    t.integer "amount"
    t.string "paid_by"
    t.integer "order_id", null: false
    t.index ["order_id"], name: "index_payments_on_order_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.decimal "rating"
    t.text "remarks"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id", null: false
    t.index ["order_id"], name: "index_ratings_on_order_id"
  end

  create_table "resturants", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employees", "Resturants"
  add_foreign_key "food_items", "categories"
  add_foreign_key "food_items", "orders"
  add_foreign_key "menus", "resturants"
  add_foreign_key "options", "food_items"
  add_foreign_key "orders", "customers"
  add_foreign_key "payments", "orders"
  add_foreign_key "ratings", "orders"
end
