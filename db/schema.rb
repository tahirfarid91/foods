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

ActiveRecord::Schema[7.0].define(version: 2022_11_03_063307) do
  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "menu_id", null: false
    t.index ["menu_id"], name: "index_categories_on_menu_id"
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
    t.string "encrypted_password"
    t.integer "resturant_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer "invitation_limit"
    t.string "invited_by_type"
    t.integer "invited_by_id"
    t.integer "invitations_count", default: 0
    t.index ["invitation_token"], name: "index_employees_on_invitation_token", unique: true
    t.index ["invited_by_id"], name: "index_employees_on_invited_by_id"
    t.index ["invited_by_type", "invited_by_id"], name: "index_employees_on_invited_by"
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
    t.index ["resturant_id"], name: "index_employees_on_resturant_id"
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_food_items_on_category_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "title"
    t.text "discription"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "resturant_id", null: false
    t.integer "price"
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
    t.string "offerable_type"
    t.integer "offerable_id"
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

  add_foreign_key "categories", "menus"
  add_foreign_key "employees", "resturants"
  add_foreign_key "food_items", "categories"
  add_foreign_key "menus", "resturants"
  add_foreign_key "options", "food_items"
  add_foreign_key "orders", "customers"
  add_foreign_key "payments", "orders"
  add_foreign_key "ratings", "orders"
end
