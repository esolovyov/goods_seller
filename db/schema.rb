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

ActiveRecord::Schema.define(version: 20160507204310) do

  create_table "buyers", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.string   "region",            limit: 255
    t.string   "address",           limit: 255
    t.integer  "rating",            limit: 4
    t.text     "paiment_info",      limit: 65535
    t.integer  "purchases_counter", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id",         limit: 4
    t.integer  "parent_id",       limit: 4
    t.text     "body",            limit: 65535
    t.string   "assignment_type", limit: 255
    t.integer  "assignment_id",   limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id",   limit: 4
    t.integer  "product_id", limit: 4
    t.integer  "seller_id",  limit: 4
    t.integer  "quantity",   limit: 4
    t.decimal  "price",                precision: 10
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "seller_id",      limit: 4
    t.integer  "buyer_id",       limit: 4
    t.decimal  "price",                        precision: 10
    t.decimal  "delivery_price",               precision: 10
    t.string   "region",         limit: 255
    t.string   "address",        limit: 255
    t.text     "comment",        limit: 65535
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "seller_id",   limit: 4
    t.integer  "category_id", limit: 4
    t.decimal  "min_price",                 precision: 10
    t.decimal  "max_price",                 precision: 10
    t.integer  "quantity",    limit: 4
    t.integer  "rating",      limit: 4
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "sellers", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "region",     limit: 255
    t.string   "address",    limit: 255
    t.boolean  "active"
    t.integer  "raiting",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "stock_members", force: :cascade do |t|
    t.integer  "seller_id",  limit: 4
    t.integer  "stock_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "stock_transactions", force: :cascade do |t|
    t.integer  "seller_id",                limit: 4
    t.integer  "origin_warehouse_id",      limit: 4
    t.integer  "destination_warehouse_id", limit: 4
    t.string   "status",                   limit: 255
    t.integer  "product_id",               limit: 4
    t.integer  "quantity",                 limit: 4
    t.string   "invoice_uid",              limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "region",      limit: 255
    t.string   "address",     limit: 255
    t.decimal  "store_price",               precision: 10
    t.integer  "rating",      limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "full_name",              limit: 255
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "warehouse_stocks", force: :cascade do |t|
    t.integer  "stock_id",     limit: 4
    t.integer  "warehouse_id", limit: 4
    t.integer  "product_id",   limit: 4
    t.integer  "quantity",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "warehouses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "stock_id",   limit: 4
    t.string   "region",     limit: 255
    t.string   "adress",     limit: 255
    t.integer  "size",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
