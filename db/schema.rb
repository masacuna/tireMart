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

ActiveRecord::Schema.define(version: 20140331020243) do

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "status"
    t.decimal  "pst_rate"
    t.decimal  "gst_rate"
    t.decimal  "hst_rate"
    t.decimal  "price"
    t.decimal  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "description"
    t.integer  "stock_quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_filename"
  end

  create_table "provinces", force: true do |t|
    t.string   "name"
    t.decimal  "gst"
    t.decimal  "pst"
    t.decimal  "hst"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  add_index "provinces", ["category_id"], name: "index_provinces_on_category_id"

end
