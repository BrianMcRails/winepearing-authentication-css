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

ActiveRecord::Schema.define(version: 20160205224502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "full_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zip"
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "recipient_full_name"
    t.string   "recipient_address_line_1"
    t.string   "recipient_address_line_2"
    t.string   "recipient_address_city"
    t.string   "recipient_address_state"
    t.string   "recipient_address_zip"
  end

  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "full_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zip"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "r_full_name"
    t.string   "r_address_line_1"
    t.string   "r_address_line_2"
    t.string   "r_address_city"
    t.string   "r_address_state"
    t.string   "r_address_zip"
  end

  add_index "customers", ["user_id"], name: "index_customers_on_user_id", using: :btree

  create_table "recipients", force: :cascade do |t|
    t.string   "full_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zip"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "recipients", ["user_id"], name: "index_recipients_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "addresses", "users"
  add_foreign_key "customers", "users"
  add_foreign_key "recipients", "users"
end
