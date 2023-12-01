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

ActiveRecord::Schema[7.0].define(version: 2023_11_30_203003) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lifts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "seats"
    t.boolean "is_gondola"
    t.bigint "resort_id", null: false
    t.index ["resort_id"], name: "index_lifts_on_resort_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.integer "peak_elevation"
    t.boolean "is_ikon_resort"
  end

  add_foreign_key "lifts", "resorts"
end
