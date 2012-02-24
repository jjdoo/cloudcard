# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111217030216) do

  create_table "advs", :force => true do |t|
    t.string   "adv_id"
    t.string   "store_id"
    t.string   "title"
    t.string   "text"
    t.string   "pic"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "push"
    t.string   "remain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "card_classes", :force => true do |t|
    t.string   "store_id"
    t.string   "class"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", :force => true do |t|
    t.string   "user_id"
    t.string   "store_id"
    t.string   "class"
    t.string   "card_number"
    t.string   "card_password"
    t.string   "authorized"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ele_coupons", :force => true do |t|
    t.string   "adv_id"
    t.string   "barcode"
    t.string   "paid"
    t.date     "eff_start_time"
    t.date     "eff_end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", :force => true do |t|
    t.string   "store_id"
    t.string   "store_name"
    t.string   "store_address"
    t.string   "contact"
    t.string   "license_id"
    t.string   "logo"
    t.string   "store_password"
    t.string   "parent_store_id"
    t.string   "hot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "user_id"
    t.string   "user_name"
    t.string   "nickname"
    t.string   "gender"
    t.date     "birthday"
    t.string   "age"
    t.string   "occupation"
    t.string   "line_phone"
    t.string   "mobile_phone"
    t.string   "email"
    t.string   "user_address"
    t.string   "lock"
    t.string   "user_password"
    t.string   "id_number"
    t.string   "main_account"
    t.string   "imei"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "salt"
  end

end
