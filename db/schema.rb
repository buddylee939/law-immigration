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

ActiveRecord::Schema.define(version: 2019_02_14_140355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "citizen_forms", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.text "bio"
    t.string "twitter"
    t.string "github"
    t.string "website"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_citizen_forms_on_user_id"
  end

  create_table "field_offices", force: :cascade do |t|
    t.string "state"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_n400s", force: :cascade do |t|
    t.string "nine_digit_number"
    t.boolean "citizen_5_years"
    t.boolean "citizen_3_years"
    t.boolean "citizen_spouse"
    t.boolean "military_service"
    t.boolean "other"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "legal_last_name"
    t.string "legal_first_name"
    t.string "legal_middle_name"
    t.string "resident_last_name"
    t.string "resident_first_name"
    t.string "resident_middle_name"
    t.string "social_security"
    t.string "uscis_number"
    t.integer "gender"
    t.date "date_of_birth"
    t.date "date_permanent_resident"
    t.string "birth_country"
    t.string "citizen_country"
    t.integer "physical_disability"
    t.integer "above_50"
    t.integer "above_55"
    t.integer "above_65"
    t.integer "field_office_id"
    t.index ["user_id"], name: "index_form_n400s_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "citizen_forms", "users"
  add_foreign_key "form_n400s", "users"
end
