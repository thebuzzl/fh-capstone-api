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

ActiveRecord::Schema.define(version: 2019_05_29_024710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "markets", force: :cascade do |t|
    t.string "name"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "url"
    t.string "phone"
    t.time "open_mon"
    t.time "open_tue"
    t.time "open_wed"
    t.time "open_thu"
    t.time "open_fri"
    t.time "open_sat"
    t.time "open_sun"
    t.time "close_mon"
    t.time "close_tue"
    t.time "close_wed"
    t.time "close_thu"
    t.time "close_fri"
    t.time "close_sat"
    t.time "close_sun"
    t.string "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "markets_vendors", id: false, force: :cascade do |t|
    t.bigint "market_id", null: false
    t.bigint "vendor_id", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "unit_of_measure"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.string "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wares", force: :cascade do |t|
    t.decimal "quantity"
    t.decimal "price"
    t.decimal "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_id"
    t.bigint "market_id"
    t.index ["market_id"], name: "index_wares_on_market_id"
    t.index ["product_id"], name: "index_wares_on_product_id"
  end

  add_foreign_key "wares", "markets"
  add_foreign_key "wares", "products"
end
