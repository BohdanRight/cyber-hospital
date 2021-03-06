# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_28_001606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certificates", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "doctor_id"
    t.string "income_date"
    t.string "discharge_date"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "specialty"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "birth_date"
    t.string "diagnosis"
  end

  create_table "receivings", force: :cascade do |t|
    t.string "date"
    t.string "time"
    t.integer "patient_id"
    t.integer "doctor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
