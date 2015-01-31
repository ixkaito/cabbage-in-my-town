# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20150131033220) do
=======
ActiveRecord::Schema.define(version: 20150131012852) do
>>>>>>> master

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "costs", force: :cascade do |t|
    t.integer  "price"
    t.string   "unit"
    t.integer  "quantity"
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "costs", ["product_id"], name: "index_costs_on_product_id"
  add_index "costs", ["shop_id"], name: "index_costs_on_shop_id"
  add_index "costs", ["user_id"], name: "index_costs_on_user_id"

  create_table "prices", force: :cascade do |t|
    t.integer  "unit_price"
    t.string   "unit"
    t.integer  "quantity"
    t.integer  "user_id"
    t.integer  "product_id"
    t.integer  "shop_id"
<<<<<<< HEAD
=======
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "prices", ["product_id"], name: "index_prices_on_product_id"
  add_index "prices", ["shop_id"], name: "index_prices_on_shop_id"
  add_index "prices", ["user_id"], name: "index_prices_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
>>>>>>> master
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "prices", ["product_id"], name: "index_prices_on_product_id"
  add_index "prices", ["shop_id"], name: "index_prices_on_shop_id"
  add_index "prices", ["user_id"], name: "index_prices_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id"

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.integer  "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shops", ["area_id"], name: "index_shops_on_area_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
