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

ActiveRecord::Schema.define(version: 2023_03_02_035801) do

  create_table "feedbacks", force: :cascade do |t|
    t.text "comment"
    t.integer "user_id"
    t.integer "raw_material_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["raw_material_id"], name: "index_feedbacks_on_raw_material_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "raw_materials", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "user_id"
    t.integer "temperature"
    t.string "description"
    t.string "maturity_period"
    t.string "environmental_conditions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_raw_materials_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "feedbacks", "raw_materials"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "raw_materials", "users"
end
