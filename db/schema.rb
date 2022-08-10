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

ActiveRecord::Schema[7.0].define(version: 2022_08_10_091220) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "account_name"
    t.bigint "contact_id", null: false
    t.bigint "location_id", null: false
    t.bigint "equipment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_id"], name: "index_companies_on_contact_id"
    t.index ["equipment_id"], name: "index_companies_on_equipment_id"
    t.index ["location_id"], name: "index_companies_on_location_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "email"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "serial"
    t.string "make"
    t.string "model"
    t.text "description"
    t.date "warranty_expiration"
    t.decimal "cost"
    t.decimal "price"
    t.text "note"
    t.string "condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["serial"], name: "index_equipment_on_serial", unique: true
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "postal"
    t.string "country"
    t.integer "phone"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "companies", "contacts"
  add_foreign_key "companies", "equipment"
  add_foreign_key "companies", "locations"
end
