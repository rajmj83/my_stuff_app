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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130708020537) do

  create_table "admin_users", :force => true do |t|
    t.string   "first_name",      :limit => 25
    t.string   "last_name",       :limit => 50
    t.string   "email_id",        :limit => 100, :default => "", :null => false
    t.string   "hashed_password", :limit => 40
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "username",        :limit => 25
    t.string   "salt",            :limit => 40
  end

  add_index "admin_users", ["username"], :name => "index_admin_users_on_username"

  create_table "admin_users_categories", :id => false, :force => true do |t|
    t.integer "admin_user_id"
    t.integer "category_id"
  end

  add_index "admin_users_categories", ["admin_user_id", "category_id"], :name => "index_admin_users_categories_on_admin_user_id_and_category_id"

  create_table "categories", :force => true do |t|
    t.string   "name",       :limit => 50
    t.string   "symbol",     :limit => 4
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "category_items", :force => true do |t|
    t.integer  "category_id"
    t.integer  "public_user_id"
    t.string   "name",           :limit => 60,  :null => false
    t.string   "address",        :limit => 80,  :null => false
    t.string   "phonenumber",    :limit => 20,  :null => false
    t.string   "notes",          :limit => 100, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "category_items", ["category_id"], :name => "index_category_items_on_category_id"
  add_index "category_items", ["public_user_id"], :name => "index_category_items_on_admin_user_id"

  create_table "public_users", :force => true do |t|
    t.string   "first_name",      :limit => 25
    t.string   "last_name",       :limit => 50
    t.string   "email_id",                      :default => "", :null => false
    t.string   "username",        :limit => 20
    t.string   "hashed_password", :limit => 40
    t.string   "salt",            :limit => 40
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  add_index "public_users", ["username"], :name => "index_public_users_on_username"

end
